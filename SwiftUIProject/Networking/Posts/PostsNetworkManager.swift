//
//  PostsNetworkManager.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//

import Foundation

final class PostsNetworkManager {
    
    static let shared = PostsNetworkManager()
    
    func getPosts() async throws -> [Post] {
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        return try await NetworkManager.shared.request(
            stringUrl: urlString,
            model: [Post].self)
    }
}
