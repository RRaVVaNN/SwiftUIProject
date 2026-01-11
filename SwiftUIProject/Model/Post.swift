//
//  Post.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import Foundation

struct Post: Codable, Identifiable {
    let userId, id: Int?
    let title, body: String?
}
