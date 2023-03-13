//
//  OfficeQuoteModel.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import Foundation


struct QuoteModel : Codable, Identifiable {
    let id = UUID();
    let _id: String;
    let content: String;
}
