//
//  ToggleBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 27/12/23.
//

import SwiftUI

struct ToggleBootcamp: View {

    @State var toogleIsOn: Bool = false

    var body: some View {
        VStack {
            
            HStack {
                Text("Status: ")
                Text(toogleIsOn ? "online" : "offline")
            }
            .font(.title)

            Toggle(isOn: $toogleIsOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: .yellow))
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    ToggleBootcamp()
}
