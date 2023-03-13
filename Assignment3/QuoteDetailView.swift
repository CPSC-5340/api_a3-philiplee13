//
//  QuoteDetailView.swift
//  Assignment3
//
//  Created by Philip Lee on 3/12/23.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quoteDetail : QuoteModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(quoteDetail.content)
                    .font(.system(size: 20))
                    .padding(.horizontal)
            }
        }
    }
}
