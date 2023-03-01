//
//  ContentView.swift
//  MediaBooth
//
//  Created by christian claudeauex on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue.opacity(0.22)]), startPoint: .top, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, App!")
                
                List{
                    TodoItemView()
                    TodoItemView()
                    TodoItemView()
                }
            }
            .padding()
            .frame(height: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
