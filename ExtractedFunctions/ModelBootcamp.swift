//
//  ModelBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 17/01/24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}


struct ModelBootcamp: View {

    @State var users: [UserModel] = [
        UserModel(displayName: "Filipe", userName: "filipecm_", followerCount: 1050, isVerified: false),
        UserModel(displayName: "Julia", userName: "juju", followerCount: 1500, isVerified: true),
        UserModel(displayName: "Bruno", userName: "melao", followerCount: 800, isVerified: false),
        UserModel(displayName: "Patricia", userName: "gustavT", followerCount: 1300, isVerified: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)

                        }

                        Spacer()

                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }

                    }
                    .padding(.vertical, 10)

                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
