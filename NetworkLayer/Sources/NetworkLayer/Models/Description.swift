//
// Description.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Description: Codable, JSONEncodable, Hashable {

    public var url: String?
    public var name: String
    public var gender: String
    public var culture: String
    public var born: String
    public var died: String
    public var titles: [String]?
    public var aliases: [String]?
    public var father: String?
    public var mother: String?
    public var spouse: String?
    public var allegiances: [String]?
    public var books: [String]?
    public var povBooks: [String]?
    public var tvSeries: [String]?
    public var playedBy: [String]?

    public init(url: String? = nil, name: String, gender: String, culture: String, born: String, died: String, titles: [String]? = nil, aliases: [String]? = nil, father: String? = nil, mother: String? = nil, spouse: String? = nil, allegiances: [String]? = nil, books: [String]? = nil, povBooks: [String]? = nil, tvSeries: [String]? = nil, playedBy: [String]? = nil) {
        self.url = url
        self.name = name
        self.gender = gender
        self.culture = culture
        self.born = born
        self.died = died
        self.titles = titles
        self.aliases = aliases
        self.father = father
        self.mother = mother
        self.spouse = spouse
        self.allegiances = allegiances
        self.books = books
        self.povBooks = povBooks
        self.tvSeries = tvSeries
        self.playedBy = playedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case name
        case gender
        case culture
        case born
        case died
        case titles
        case aliases
        case father
        case mother
        case spouse
        case allegiances
        case books
        case povBooks
        case tvSeries
        case playedBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encode(name, forKey: .name)
        try container.encode(gender, forKey: .gender)
        try container.encode(culture, forKey: .culture)
        try container.encode(born, forKey: .born)
        try container.encode(died, forKey: .died)
        try container.encodeIfPresent(titles, forKey: .titles)
        try container.encodeIfPresent(aliases, forKey: .aliases)
        try container.encodeIfPresent(father, forKey: .father)
        try container.encodeIfPresent(mother, forKey: .mother)
        try container.encodeIfPresent(spouse, forKey: .spouse)
        try container.encodeIfPresent(allegiances, forKey: .allegiances)
        try container.encodeIfPresent(books, forKey: .books)
        try container.encodeIfPresent(povBooks, forKey: .povBooks)
        try container.encodeIfPresent(tvSeries, forKey: .tvSeries)
        try container.encodeIfPresent(playedBy, forKey: .playedBy)
    }
}

