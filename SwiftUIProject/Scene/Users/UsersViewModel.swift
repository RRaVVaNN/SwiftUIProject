//
//  UsersViewModel.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import Foundation

@MainActor
final class UsersViewModel: ObservableObject {
    
    @Published var users: [User] = []
    @Published var errorMessage : String?
    
    func fetchUsers() {
        Task {
            do {
                users = try await UsersNetworkManager.shared.getUsers()
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }
}
