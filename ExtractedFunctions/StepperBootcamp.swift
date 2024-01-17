//
//  ContentView.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 02/12/23.
//

import SwiftUI

struct StepperBootcamp: View {

    @State var stepperValue: Int = 10
    @State var widthRectangle: CGFloat = 0

    var body: some View {
        VStack {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(50)

            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthRectangle, height: 100)
            Stepper("Stepper 2") {
                // quando aperter o "+"
                incrementWidth(amount: 10)
            } onDecrement: {
                // quando aperter o "-"
                decrementWidth(amount: 10)
            }
            .padding(50)
        }

    }

    func incrementWidth(amount: CGFloat) {
        withAnimation {
            widthRectangle += amount
        }
    }

    func decrementWidth(amount: CGFloat) {
        withAnimation {
            widthRectangle -= amount
        }
    }

}

#Preview {
    StepperBootcamp()
}
