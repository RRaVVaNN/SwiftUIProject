//
//  UsersNetworkManager.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import Foundation

final class UsersNetworkManager {
    
    static let shared = UsersNetworkManager()
    
    func getUsers() async throws -> [User] {
        let urlString = "https://jsonplaceholder.typicode.com/users"
        return try await NetworkManager.shared.request(
            stringUrl: urlString,
            model: [User].self
        )
    }
}
