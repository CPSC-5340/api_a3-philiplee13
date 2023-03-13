//
//  QuoteDetailView.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quoteDetails: QuoteModel;
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Author: \(quoteDetails.character.firstname) \(quoteDetails.character.lastname)")
                    .font(.system(size: 20))
                    .padding(.horizontal)
                Text(quoteDetails.content)
                    .font(.system(size: 20))
                    .padding(.horizontal)
            }
        }
    }
}
