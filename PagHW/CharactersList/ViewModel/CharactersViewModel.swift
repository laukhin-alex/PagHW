//
//  CharactersViewModel.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import Foundation
import NetworkLayer


class CharactersViewModel: ObservableObject {

    @Published var characters: [Description] = []
    var canLoad = true

    private var page = 2
    private var totalPages: Int = 214

   public func fetchCharacters() {
        guard page <= totalPages else { return }
        guard canLoad == true else { return }

        canLoad = false
        CharactersAPI.getAllCharacters(page: page) { [weak self] data, error in
            if error == nil {
                self?.characters.append(contentsOf: data ?? [])
                self?.page += 1
                self?.totalPages = 214
            } else {
                print("Error: \(error)")
            }
            self?.canLoad = true
        }
    }
}
