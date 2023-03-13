//
//  OfficeQuoteView.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import Foundation

class OfficeQuoteView : ObservableObject {
    
    @Published private(set) var quoteData = [QuoteModel]()
    private let url = "https://www.officeapi.dev/api/quotes/random";
    
    
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error ) in
                    if let error = error {
                        print(error)
                    } else {
                        if let data = data {
                            do {
                                print("data is \(data)")
                                let quoteData = try JSONDecoder().decode([String: QuoteModel].self, from: data)["data"]
                                print("quotedata is \(quoteData)")
                            } catch {
                                print(error)
                            }
                        }
                    }
                }.resume()
        }
    }
}
