//
//  ContentView.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 02/12/23.
//

import SwiftUI

struct ContentView: View {

    @State var backgroundColor: Color = Color.pink

    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(.all)
            
            //content
            content
        }
    }

    var content: some View {
        VStack {
            Text("Titulo")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Clique aqui")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }

        }
    }

    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ContentView()
}
