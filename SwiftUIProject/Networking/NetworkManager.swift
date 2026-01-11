//
//  NetworkManager.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    func request<T: Decodable>(
        stringUrl: String,
        model: T.Type,
        method: HTTPMethod = .get,
        parameters: [String: Any]? = nil,
        encoding: EncodingType = .url,
        headers: [String: String]? = nil
    ) async throws -> T {
        
        guard var url = URL(string: stringUrl) else {
            throw URLError(.badURL)
        }
        
        if encoding == .url, let parameters {
            var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            components?.queryItems = parameters.map {
                URLQueryItem(name: $0.key, value: "\($0.value)")
            }
            url = components?.url ?? url
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        headers?.forEach {
            request.setValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        if encoding == .json, method != .get, let parameters {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        
        let (data, _) = try await URLSession.shared.data(for: request)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
