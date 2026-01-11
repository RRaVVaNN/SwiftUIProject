//
//  UserRowView.swift
//  SwiftUIProject
//
//  Created by Naila Amirova on 11.01.26.
//

import SwiftUI

struct UserRowView: View {
    
    let user: User
    
    var body: some View {
        VStackLayout(alignment: .leading , spacing: 4) {
            Text(user.name)
                .font(.headline)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
    
}

#Preview {
    UserRowView(user: .init(id: 1, name: "Sf", username: "DF", email: "DV", address: .init(street: "SFv", suite: "FBf", city: "as", zipcode: "dd", geo: .init(lat: "23", lng: "12")), phone: "dfv", website: "FB", company: .init(name: "Dfv", catchPhrase: "asss", bs: "naila")))
}
