//
//  TextFieldBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 07/12/23.
//

import SwiftUI

struct TextFieldBootcamp: View {

    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TextField("Digite aqui", text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)

                Button {
                    if textIsappropriate() {
                        saveText()
                    }

                } label: {
                    Text("Save".uppercased())
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textIsappropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsappropriate())

                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }

    }

    func textIsappropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }

    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
