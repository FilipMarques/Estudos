//
//  AnimationTimingBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 04/12/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {

    @State var isAnimating: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.default)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
