//
//  ConceptsView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct ConceptsView: View {
    var body: some View {
        NavigationView {
            List(dsaConcepts) { concept in
                NavigationLink(destination: ConceptDetailView(concept: concept)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(concept.title)
                                .font(.headline)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("DSA Concepts")
        }
    }
}
