//
//  DocumentationBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 16/01/24.
//

import SwiftUI

struct DocumentationBootcamp: View {

    // MARK: PROPERTIES

    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]

    @State var showAlert: Bool = false

    // MARK: BODY

    var body: some View {
        NavigationView {

            // CMD + OPT + <- (SETA PRO LADO)

            ScrollView {
                ForEach(data, id: \.self) { fruit in
                    Text(fruit)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "This is alert")
            })
        }
    }

    // MARK: FUNCTIONS

    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }

}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
