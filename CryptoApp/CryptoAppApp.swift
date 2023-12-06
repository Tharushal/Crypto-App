//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Tharusha Lakshan on 12/5/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
