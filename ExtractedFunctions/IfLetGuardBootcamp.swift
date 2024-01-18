//
//  ifLetGuardBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 17/01/24.
//

import SwiftUI

struct IfLetGuardBootcamp: View {

    @State var currentUserId: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData2()
            }
        }
    }

    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "this is the new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error! no have user id"
        }
    }

    func loadData2() {
        guard let userId = currentUserId else {
            displayText = "Error!"
            return
        }

        displayText = "Guard let message \(userId)"
    }
}

#Preview {
    IfLetGuardBootcamp()
}
