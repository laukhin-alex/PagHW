//
//  Unlocked.swift
//  PagHW
//
//  Created by Александр on 09.08.2022.
//

import Combine

class Unlocked: ObservableObject {

    let didChange = PassthroughSubject<Unlocked,Never>()



    func unlocked() {
        self.isUnlocked = true
    }

    var isUnlocked = false {
        didSet {
            didChange.send(self)
        }
    }
}
