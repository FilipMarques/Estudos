//
//  PopoverBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 05/12/23.
//

import SwiftUI

struct PopoverBootcamp: View {

    @State var showNewScreen: Bool = false

    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }

            // 1 - Metodo sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })

            //  2 - Metodo transition
            if showNewScreen {
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }

            // 3 - Animation off set
        }
    }
}

struct NewScreen: View {

    @Environment(\.presentationMode) var mode
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(.all)
            Button(action: {
//                mode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
