//
//  CommentsController.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//

import SwiftUI

struct CommentsController: View {
    let postId: Int
    @StateObject private var viewModel = CommmentsViewModel()
    
    var body: some View {
        List(viewModel.comments) { comment in
            CommentRowView(comment: comment)
        }.navigationTitle("Comments")
            .task {
                await viewModel.fetchComments(postId: postId)
            }
            .toolbar(.hidden, for: .tabBar)
    }
}
