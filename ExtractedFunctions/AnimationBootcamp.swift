//
//  AnimationBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 04/12/23.
//

import SwiftUI

struct AnimationBootcamp: View {

    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }

            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 25.0 : 50.0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
