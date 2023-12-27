//
//  SheetsBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 05/12/23.
//

import SwiftUI

struct SheetsBootcamp: View {

    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Button \(showSheet.description)")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            // NUNCA ADICIONAR LOGICA USANDO SHEET IF ELSE SWITCH PROIBIDO
        }
    }
}

struct SecondScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)

            }
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
