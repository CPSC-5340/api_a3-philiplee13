//
//  OfficeCharacterView.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import Foundation

class OfficeCharacterView : ObservableObject {
    
    @Published var characterData = [CharacterModel]()
    private let url = "https://www.officeapi.dev/api/characters/";
    
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: self.url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url);
                let results = try JSONDecoder().decode(Characters.self, from: data);
//                print("results are \(results)")
                self.characterData = results.data
                print("character data is \(self.characterData)")
            } catch {
                print("Error happened when trying to get data for characters \(error)")
            }
        }
    }
}
