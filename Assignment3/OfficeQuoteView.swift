//
//  OfficeQuoteView.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import Foundation

class OfficeQuoteView : ObservableObject {
    
    @Published var quoteData = QuoteModel()
    private let url = "https://www.officeapi.dev/api/quotes/random";
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: self.url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url);
                let results = try JSONDecoder().decode([String: QuoteModel].self, from: data);
//                print("results are \(results)")
                self.quoteData = results["data"]!
                print("quote data is \(self.quoteData)")
            } catch {
                print("Error happened when trying to get data \(error)")
            }
        }
    }
}
