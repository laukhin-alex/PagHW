//
//  RealmRepository.swift
//  PagHW
//
//  Created by Александр on 01.12.22.
//

import Foundation
import RealmSwift

class RealmRepository {
    private var instance: Realm
    private var id: Int = 1

    init() {
        let realmUrl = try! FileManager.default.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: true
        )
        .appendingPathComponent("Characters.realm")

        var realmConfig = Realm.Configuration()
        realmConfig.fileURL = realmUrl

        instance = try! Realm(configuration: realmConfig)
    }
    func getAllCharacters() -> [AppCharacter] {
        let results = instance.objects(RealmCharacter.self)
        print(results)
        var converted: [AppCharacter] = []

        do {
            converted = results.map { current in
                AppCharacter(
                    id: UUID(),
                    name: current.name,
                    gender: current.gender,
                    culture: current.culture,
                    born: current.born,
                    died: current.died)
            }
        } catch {
            print("Error during realm read")
        }
        print(converted)
        return converted
    }

    func addCharacter(_ newCharacter: AppCharacter) {
        let realmCharacter = RealmCharacter()
        realmCharacter.id = id
        realmCharacter.name = newCharacter.name
        realmCharacter.gender = newCharacter.gender
        realmCharacter.culture = newCharacter.culture
        realmCharacter.born = newCharacter.born
        realmCharacter.died = newCharacter.died

        id += 1

        DispatchQueue.main.async {
            do {
                try self.instance.write {
                    self.instance.add(realmCharacter)
                }
            } catch {
                print("Error during realm add")
            }
        }
    }

}
