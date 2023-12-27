//
//  NavigationViewBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 05/12/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        // NUNCA UTILIZAR MAIS DE UMA NAVIGATIONVIEW
        NavigationView {
            ScrollView {

                NavigationLink("ola", 
                               destination: MyOtherScreen())

                Text("ola")
                Text("ola")
                Text("ola")
            }
            .navigationTitle("Title")
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
            )
            //            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyOtherScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Grenn screnn")
//                .navigationBarHidden(true)

            VStack {
                NavigationLink("ola2",
                                destination: Text("Terceira tela"))
                Button("Volta pra tela") {
                    presentationMode.wrappedValue.dismiss()
                }
            }

        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
