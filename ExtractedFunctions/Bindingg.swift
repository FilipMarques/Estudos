//
//  Binding.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 02/12/23.
//

import SwiftUI

struct Bindingg: View {

    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()


            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    @Binding var title: String

    var body: some View {
        Button {
            backgroundColor = .orange
            title = "New Title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    Bindingg()
}
