//
//  UnlockIngView.swift
//  PagHW
//
//  Created by Александр on 09.08.2022.
//

import LocalAuthentication
import SwiftUI


struct UnlockingView: View {
    @ObservedObject private var unlockingView = UnlockingViewModal()

    var body: some View {
        VStack {
            Spacer()
            Text("You need to unlock!")
                .font(.system(.largeTitle))
                .padding()
            Spacer()
            if unlockingView.isUnlocked {
                Text("Data is unlocked")
            } else {
                Text("Data is locked")
            }
            Spacer()
        }
        .onAppear {
            unlockingView.authenticate()
        }
        .navigate(to: CharactersListView(), when: $unlockingView.isUnlocked)
    }

}

//struct UnlockIngView_Previews: PreviewProvider {
//    static var previews: some View {
//        UnlockIngView()
//    }
//}
