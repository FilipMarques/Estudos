//
//  ActionsheetBootcamp.swift
//  ExtractedFunctions
//
//  Created by Filipe Camargo Marques on 06/12/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {

    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost

    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding()

            Rectangle()
                .aspectRatio(1.0 ,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }

    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {

        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {

        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {

        }
        let cancelButton: ActionSheet.Button = .cancel()

        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet (
                title: Text("Deseja excluir a foto?"),
                message: nil,
                buttons: [deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet (
                title: Text("O que voce gostaria de fazer"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
