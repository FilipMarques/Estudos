//
//  TabviewBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 16/01/24.
//

import SwiftUI

struct TabviewBootcamp: View {

    @State var selectedTab: Int = 0
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]

    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(height: 200)
        .tabViewStyle(PageTabViewStyle())
        //        TabView(selection: $selectedTab) {
        //            HomeView(selectedTab: $selectedTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //                .tag(0)
        //
        //            Text("BROWSE TAB")
        //                .tabItem {
        //                    Image(systemName: "globe")
        //                    Text("Browse")
        //                }
        //                .tag(1)
        //
        //            Text("PROFILE TAB")
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("Profile")
        //                }
        //                .tag(2)
        //        }
        //        .accentColor(.red)
        //    }
    }
}

#Preview {
    TabviewBootcamp()
}

struct HomeView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })

            }
        }

    }
}
