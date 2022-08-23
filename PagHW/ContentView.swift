//
//  ContentView.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI



struct ContentView: View {

    @State var tabSelection: Int = 0
//    @AppStorage("Suffix", store: UserDefaults(suiteName: "group.h.PagHW.AppExtension"))

    var body: some View {

        TabView(selection: $tabSelection) {

            CharactersListView()
                .tag(0)
                .tabItem {
                    Label("Ice and fire", systemImage: "person.3.fill")
                }

            SuffixIteratorView()
                .tag(1)
                .tabItem {
                    Label("Suffix", systemImage: "textformat.abc.dottedunderline")
                }


        }
        .background(.cyan)
    }

}

