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
            let results = try await NetworkManager.shared.request(
                stringUrl: "https://jsonplaceholder.typicode.com/comments?postId=\(postId)",
                model: [Comment].self
            )
            comments = results
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
