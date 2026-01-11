//
//  SwiftUIProjectApp.swift
//  SwiftUIProject
//
//  Created by Ravan Asgarov on 04.01.26.
//

import SwiftUI

@main
struct SwiftUIProjectApp: App {
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                MainTabView()
            }else {
                RegisterView(isLoggedIn: $isLoggedIn)
            }
        }
    }
}
