//
//  Configurator.swift
//  PagHW
//
//  Created by Александр on 03.08.2022.
//

import Foundation
import NetworkLayer

class Configurator {
    static let shared = Configurator()

    func register() {
        ServiceLocator.shared.addServices(service: CharactersAPI())
        ServiceLocator.shared.addServices(service: CharactersViewModel())
        print("🅰️Servies registration💻")

    }
}
