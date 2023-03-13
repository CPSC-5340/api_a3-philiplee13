//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @ObservedObject var quotevm = OfficeQuoteView()
    var body: some View {
        NavigationStack {
            List {
//                ForEach(quotevm.quoteData) { data in
                    NavigationLink {
//                        QuoteDetailView(quoteDetail: quotevm)
                    } label: {
                        Text("See a random quote here")
                    }
//                }
            }
            .onAppear {
                quotevm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Office API Details")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
