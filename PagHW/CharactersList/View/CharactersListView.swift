//
//  CharactersListView.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI
import NetworkLayer


struct CharactersListView: View {
    @ObservedObject private var viewModel = CharactersViewModel()
    var repository = RealmRepository()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.characters) { character in
                    let isElemLast = viewModel.characters.isLast(character)
                    CharacterCellView(name: character.name,
                                      url: character.url ?? "Missing URL",
                                      gender: character.gender,
                                      culture: character.culture,
                                      born: character.born,
                                      died: character.died,
                                      titles: character.titles ?? ["Missing titles"],
                                      aliases: character.aliases ?? ["Missing aliases"],
                                      father: character.father ?? "Father is unknown",
                                      mother: character.mother ?? "Mother is unknown",
                                      spouse: character.spouse ?? "Spouse is unknown",
                                      allegiances: character.allegiances ?? ["Allegiances is unknown"],
                                      books: character.books ?? ["No information"],
                                      povBooks: character.povBooks ?? ["No information"],
                                      tvSeries: character.tvSeries ?? ["No information"],
                                      playedBy: character.playedBy ?? ["No information"])
                    
                    .onAppear {
                        if viewModel.canLoad || isElemLast {
                            viewModel.fetchCharacters()
                        }
                    }

                }
            }
            .navigationTitle("Персонажи Ice'n Fire")
            .onAppear {
                viewModel.fetchCharacters()
                repository.getAllCharacters()
            }
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}

