//
//  MainTabView.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 11.01.26.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            PostController()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Posts")
                }
        }
    }
}
