//
//  PostController.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import SwiftUI

struct PostController: View {
    
    @StateObject private var viewModel = PostViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.posts) { post in
                NavigationLink {
                    CommentsController(postId: post.id ?? 0)
                }
                label: { Text(post.title ?? "")
                }
            }.task {
                await viewModel.fetchPosts()
            }.navigationTitle("Posts")
        }
    }
}
#Preview{
    PostController()
}
