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
                ScrollView {
                    VStack {

                        if name != "" {
                            Text("This is \(name)")
                                .padding(.top)
                                .font(.largeTitle)
                        } else {
                            Text("Unknown character")
                                .padding(.top)
                                .font(.largeTitle)
                        }
                    }
                    VStack(spacing: 3.0) {

                        Group {
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
                            Text("spouse: \(spouse)")
                        }.padding(.horizontal)
                        Group {
                            Text("\(name) was in \(books.joined(separator: ", "))")
                                .padding()
                            Text("\(name) was in \(allegiances.joined(separator: ", "))")
                                .padding()
                            Text("\(name) was in \(povBooks.joined(separator: ", "))")
                                .padding()
                            Text("\(name) was in \(tvSeries.joined(separator: ", "))")
                                .padding()
                            Text("\(name) was played by\(playedBy.joined(separator: ", "))")
                        }.padding(.horizontal)
                    }
                }
                .foregroundColor(.brown)
                .background(Color.black)
            }
        }
    }
}
