//
//  ContentView-viewModel.swift
//  PagHW
//
//  Created by Александр on 08.08.2022.
//

import Foundation
import LocalAuthentication



@MainActor class UnlockingViewModal: ObservableObject {

    @Published var isUnlocked = false

    func authenticate() {
        let context = LAContext()
        var error: NSError?

            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
                let reason = "Unlocking is needed"

                context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in

                    if success {
                        self.isUnlocked = true
                    } else{
//                        self.isUnlocked = false
                    }
                }
            } else {
//                self.isUnlocked = false

            }
        
    }
}
