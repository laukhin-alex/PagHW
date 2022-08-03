//
//  PagHWApp.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI

@main
struct PagHWApp: App {
    init() {
        Configurator.shared.register()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
