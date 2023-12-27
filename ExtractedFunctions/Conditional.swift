//
//  Conditional.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 02/12/23.
//

import SwiftUI

struct Conditional: View {

    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Button("Circle button \(showCircle.description)") {
                showCircle.toggle()
            }

            Button("Rectangle button \(showRectangle.description)") {
                showRectangle.toggle()
            }

            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)

            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }

            Spacer()
        }

    }
}

#Preview {
    Conditional()
}
