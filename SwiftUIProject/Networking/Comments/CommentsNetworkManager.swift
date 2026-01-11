//
//  CommentsNetworkManager.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//

import Foundation

final class CommentsNetworkManager {
    
    static let shared = CommentsNetworkManager()
    
    func getComments(postId: Int) async throws -> [Comment] {
        let stringUrl = "https://jsonplaceholder.typicode.com/comments?postId=\(postId)"
        return try await NetworkManager.shared.request(
            stringUrl: stringUrl,
            model: [Comment].self)
    }
}
