//
//  TodoItemView.swift
//  MediaBooth
//
//  Created by christian claudeauex on 2/27/23.
//

import SwiftUI

struct TodoItemView: View {
    var body: some View {
        HStack{
            Button(action: addItem) {
                    Label("", systemImage: "circle")
                }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .frame(width: .infinity)
        
    }
}

func addItem(){
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView()
    }
}
