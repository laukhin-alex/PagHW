//
//  SuffixIteratorView.swift
//  PagHW
//
//  Created by Александр on 06.09.2022.
//

import SwiftUI

struct SuffixIteratorView: View {
    var repositoryTwo = RealmRepository()
    var body: some View {
        VStack {
            Text("bla")
//            List {
//                ForEach(self.repository, id\.self) {
//                    character in
//                    Text(character.name)
//                }
            }
        .onAppear {
            repositoryTwo.getAllCharacters()
        }
    }
}

struct SuffixIteratorView_Previews: PreviewProvider {
    static var previews: some View {
        SuffixIteratorView()
    }
}
