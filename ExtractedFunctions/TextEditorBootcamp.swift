
//  TextEditorBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 27/12/23.


import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "TESTE"

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                Button(action: {

                }, label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
