//
//  ExtractSubviews.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 02/12/23.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()

            HStack {
                MyItem(item: "banana", count: 1, color: .yellow)
                MyItem(item: "Oranges", count: 3, color: .orange)
                MyItem(item: "Apples", count: 7, color: .red )
            }
        }
    }
    
}

#Preview {
    ExtractSubviews()
}

struct MyItem: View {
    let item: String
    let count: Int
    let color: Color

    var body: some View {
        VStack {
            Text("\(count)")
            Text(item)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
