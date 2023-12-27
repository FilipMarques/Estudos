//
//  TernaryBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 04/12/23.
//

import SwiftUI

struct TernaryBootcamp: View {

    @State var isStartingState: Bool = false

    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(10)
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
