//
//  PagHWApp.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI

@main
struct PagHWApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(unlock: UnlockingViewModal())
        }
    }
}
