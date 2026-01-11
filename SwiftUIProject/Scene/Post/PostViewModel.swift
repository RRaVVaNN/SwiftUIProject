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
            posts = try await PostsNetworkManager.shared.getPosts()
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
