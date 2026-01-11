//
//  CommmentsViewModel.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//

import Foundation

@MainActor
final class CommmentsViewModel: ObservableObject {
    
    @Published var comments: [Comment] = []
    @Published var errorMessage: String?
    
    func fetchComments(postId: Int) async {
        do {
            comments = try await CommentsNetworkManager.shared.getComments(postId: postId)
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
