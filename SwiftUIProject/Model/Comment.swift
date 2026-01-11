//
//  Comment.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import Foundation

struct Comment: Codable, Identifiable {
    let postId, id: Int?
    let name, email, body: String?
}
