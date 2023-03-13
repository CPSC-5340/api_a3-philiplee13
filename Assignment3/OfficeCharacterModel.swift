//
//  OfficeCharacterModel.swift
//  Assignment3
//
//  Created by Philip Lee on 3/13/23.
//

import Foundation

struct Characters : Codable {
    let data : [CharacterModel]
}

struct CharacterModel : Codable, Identifiable {
    let id = UUID()
//    var _id = "";
    var firstname = "";
    var lastname = "";
}
