//
//  UsersViewModel.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import Foundation

final class UsersViewModel: ObservableObject {
    
    @Published var items: [User] = []
    @Published var errorMessage : String?
    
    private let manager : NetworkManager()
    
    func getData() {
        manager.request(endpoint: "users", model: [User].self) { data, error in
            DispatchQueue.main.async {
                if let error {
                    self.errorMessage = error
                } else if let data {
                    self.items = data
                }
            }
        }
    }
}
