//
//  ContextMenuBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 07/12/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {

    @State var backgroundColor: Color = Color.blue

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            Button {
                backgroundColor = .red
            } label: {
                Text("Button 2")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

        }))
    }
}

#Preview {
    ContextMenuBootcamp()
}
