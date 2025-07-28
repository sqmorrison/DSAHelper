//
//  ContentView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(sampleConcepts) { concept in
                NavigationLink(destination: DetailView(concept: concept)) {
                    Text(concept.title)
                        .font(.headline)
                }
            }
            .navigationTitle("DSA Helper")
        }
    }
}
