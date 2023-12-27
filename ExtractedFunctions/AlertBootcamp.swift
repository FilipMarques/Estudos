//
//  AlertBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 06/12/23.
//

import SwiftUI

struct AlertBootcamp: View {

    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow

    enum MyAlerts {
        case success
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Erro"
//                    alertMessage = "Erro desconhecido 🤬"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Deu bom"
//                    alertMessage = "So agradece 🙏"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
        })

        }
    }

    func getAlert() -> Alert {

        switch alertType {
        case .success:
            return Alert(
                title: Text("Deu bom"),
                message: Text("So agradece 🙏"),
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .green
                })
            )
        default:
            return Alert(
                title: Text("Erro"),
                message: Text("Erro desconhecido 🤬")
            )
        }
//        return Alert(
//            title: Text("Title"),
//            message: Text("Message"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

#Preview {
    AlertBootcamp()
}
