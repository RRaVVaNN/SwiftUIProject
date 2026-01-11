//
//  UsersView.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import SwiftUI

struct UsersView: View {
    
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    @StateObject private var viewModel = UsersViewModel()
    
    var body : some View {
        
        NavigationStack {
            List(viewModel.users) { user in
                NavigationLink {
                    UserInfoView(user: user)
                } label: {
                    UserRowView(user: user)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
            Spacer()
            
            Button(action: {
                print("Register tapped")
                isLoggedIn = false
            }) {
                Text("Log Out")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal , 24)
            .padding(.bottom , 20)
        }
    }
}

