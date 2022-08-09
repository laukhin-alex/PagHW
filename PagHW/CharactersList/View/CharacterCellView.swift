//
//  CharacterCellView.swift
//  PagHW
//
//  Created by Александр on 26.07.2022.
//

import SwiftUI

struct CharacterCellView: View {
    @State private var showDetailViewController = false
     let name: String
     let url: String
     let gender: String
     let culture: String
     let born: String
     let died: String
     let titles: [String]
     let aliases: [String]
     let father: String
     let mother: String
     let spouse: String
     let allegiances: [String]
     let books: [String]
     let povBooks: [String]
     let tvSeries: [String]
     let playedBy: [String]

    var body: some View {
        VStack {
            if name != "" {
                Text(name)
            } else {
                Text("Unknown character")
            }
            Button(action: {
                self.showDetailViewController = true
                print(name)
            }) {
                NavigationView {
                    VStack {
                        Text(name)
                            .padding()
                            .foregroundColor(.brown)
                            .background(Color.green)
                    }
                    .padding()
                }
            }.sheet(isPresented: $showDetailViewController) {
                
                VStack {
                    if name != "" {
                        Text("This is \(name)")
                            .padding()
                    } else {
                        Text("Unknown character")
                            .padding()
                    }

                    Text("You can find more information about \(name) at \(url)")
                        .padding()
                    Text("Gender: \(gender)")
                    Text("Culture: \(culture)")
                    Text("Born: \(born)")
                    Text("Dead: \(died)")
                    Text("\(name) was \(titles.joined(separator: ", "))")
                        .padding()
                    Text("\(name) was \(aliases.joined(separator: ", "))")
                        .padding()
                    
                    Text("father: \(father)")
                    Text("mother: \(mother)")

                }
                .foregroundColor(.brown)
                    .background(Color.black)
            }
        }

    }
}

