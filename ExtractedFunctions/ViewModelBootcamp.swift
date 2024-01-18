//
//  ViewModelBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 17/01/24.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject  {

    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false

    func getFruits() {

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let fruit1 = FruitModel(name: "Orange", count: 2)
            let fruit2 = FruitModel(name: "Banana", count: 5)
            let fruit3 = FruitModel(name: "WaterMelon", count: 8)

            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }

    }

    func deleteFruit(_ index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {

    //    @State var fruitArray: [FruitModel] = []
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear {
                fruitViewModel.getFruits()
            }
        }
    }

}

#Preview {
    ViewModelBootcamp()
}
