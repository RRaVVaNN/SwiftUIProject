//
//  PostViewModel.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import Foundation

@MainActor
final class PostViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    @Published var errorMessage: String?
    
    func fetchPosts() async {
        do {
            let result = try await NetworkManager.shared.request(
                stringUrl: "https://jsonplaceholder.typicode.com/posts",
                model: [Post].self
            )
            posts = result
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
