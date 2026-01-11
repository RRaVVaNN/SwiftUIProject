//
//  CommentRowView.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import SwiftUI

struct CommentRowView: View {
    
    let comment: Comment
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(comment.name ?? "")
                .font(.headline)
                .foregroundStyle(.primary)
            
            Text(comment.body ?? "")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(nil)
        }
        .padding(.vertical, 8)
    }
}
