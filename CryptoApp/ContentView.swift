//
//  ContentView.swift
//  CryptoApp
//
//  Created by Tharusha Lakshan on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            VStack(spacing: 40){
                
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                
                   }
            .font(.headline)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
