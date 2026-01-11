//
//  UsersView.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject private var viewModel = UsersViewModel()
    @State var mockItems: [String] = [
        "First item",
        "Second item",
        "Third item",
        "This is a longer text to test how the UI behaves with multiple lines",
        "Another item",
        "Short",
        "Very very very long text to see wrapping and spacing in the cell"
    ]
    
    var body : some View {
        NavigationStack {
            /*
            List(viewModel.items) { user in
                NavigationLink {
                    UserInfoView(user: user)
                } label: {
                    UserRowView(user: user)
                }
            }
            .navigationTitle("Users")
            .listStyle(.plain)
            .onAppear {
                viewModel.getData()
            }
            */
            
            List(mockItems, id: \.self) { item in
                Text(item)
                    .padding(.vertical , 8)
            }
            .navigationTitle("Users")
            .listStyle(.plain)
        }
    }
    
}

#Preview {
    UsersView()
}
