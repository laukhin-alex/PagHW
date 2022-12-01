//
//  RealmCharacter.swift
//  PagHW
//
//  Created by Александр on 01.12.22.
//

import Foundation
import Realm
import RealmSwift

class RealmCharacter: RealmSwiftObject {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var name: String
    @Persisted var gender: String
    @Persisted var culture: String
    @Persisted var born: String
    @Persisted var died: String
}
