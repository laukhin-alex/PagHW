//
//  ContentView.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ContentViewModelForTest()
    
    var body: some View {

        CharactersListView()
            .padding().onAppear {
            self.model.doPagging()
        }
    }
}


