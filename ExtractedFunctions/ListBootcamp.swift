//
//  ListBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 05/12/23.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = ["Maça", "Banana", "Melão", "Pera"]
    @State var veggies: [String] = ["Tomate", "Pepino", "Alface", "Batata "]

    var body:  some View {

        NavigationView {
            List {
                Section(
                    header: Text("Frutas")) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                Section(header: Text("Vegetais")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Lista de compras")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton

            )
        }

    }

    var addButton: some View {
        Button("Add") {
            add()
        }
    }

    func add() {
        fruits.append("Jabuticaba")
    }

    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
