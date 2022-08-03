//
//  ContentViewModelForTest.swift
//  PagHW
//
//  Created by Александр on 03.08.2022.
//

import Foundation
import SwiftUI
import NetworkLayer

class ContentViewModelForTest: ObservableObject {
    @Injected var charactersViewModel: CharactersViewModel?
    @Injected var testingService: TestingService?

    func doPagging(){
        print("😇")
        testingService?.test()
        charactersViewModel?.fetchCharacters()



    }
}
