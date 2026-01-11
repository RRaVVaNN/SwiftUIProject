//
//  UserInfoView.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import SwiftUI

struct UserInfoView: View {
    
    let viewModel: UserInfoViewModel
    
    init(user: User) {
        self.viewModel = UserInfoViewModel(user: user)
    }
    var body: some View {
        VStackLayout(alignment: .leading , spacing: 8) {
            Text("User name: \(viewModel.user.name)")
            Text("User email: \(viewModel.user.email)")
            Text("User phone: \(viewModel.user.phone)")
            Text("User company: \(viewModel.user.company.name)")
            
            Text(
                "Address \(viewModel.user.address.city) /" +
                "\(viewModel.user.address.street) /" +
                "\(viewModel.user.address.suite)"
            )
            .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
        }
        .padding()
        .navigationTitle("User Info")
        .toolbar(.hidden, for: .tabBar)
    }
}
