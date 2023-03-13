//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    @ObservedObject var quotevm = OfficeQuoteView()
    @ObservedObject var charactervm = OfficeCharacterView()
    var body: some View {
        NavigationStack {
            List {
                Section() {
                    Text("All Office Characters")
                    ForEach(charactervm.characterData) { data in
                        Text("Character: \(data.firstname) \(data.lastname)")
                   .font(.system(size: 20))
                   .padding(.horizontal)
                    }
                }
                .task {
                    await charactervm.fetchData()
                }
                        }
            List {
                    NavigationLink {
                        QuoteDetailView(quoteDetails: quotevm.quoteData)
                    } label: {
                        Text("See a random quote from the Office here")
                    }
            }
            .task {
                await quotevm.fetchData()
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
