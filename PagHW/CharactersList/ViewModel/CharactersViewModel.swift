//
//  CharactersViewModel.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import Foundation
import NetworkLayer

@MainActor class CharactersViewModel: ObservableObject {

    @Published var characters: [Description] = []
    var canLoad = true

    private var page = 1
    private var totalPages: Int = 214


    func fetchCharacters() {
        guard page <= totalPages else { return }
        guard canLoad == true else { return }

        canLoad = false
        CharactersAPI.getAllCharacters(page: page) { [weak self] data, error in
            if error == nil {
                self?.characters.append(contentsOf: data ?? [])
                self?.page += 1
                self?.totalPages = 214

            } else {
                print("Error: \(String(describing: error))")
            }
            self?.canLoad = true
        }
    }
}
