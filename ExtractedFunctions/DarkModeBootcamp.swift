//
//  DarkModeBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 16/01/24.
//

import SwiftUI

struct DarkModeBootcamp: View {

    @Environment(\.colorScheme) var colorSheme

    var body: some View {

        NavigationView() {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This is globally Adaptive Color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This is locally Adaptive Color")
                        .foregroundColor(colorSheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    Group {
        DarkModeBootcamp()
    }

}
