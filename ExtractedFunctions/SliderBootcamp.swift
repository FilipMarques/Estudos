//
//  SliderBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 16/01/24.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1)
            Slider(
                value: $sliderValue,
                in: 1...5,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
