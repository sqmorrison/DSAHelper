//
//  DetailView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct DetailView: View {
    let concept: DSAConcept

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(concept.title)
                    .font(.largeTitle)
                    .bold()

                Text(concept.description)
                    .font(.body)

                Text("Example:")
                    .font(.headline)
                    .padding(.top)

                Text(concept.example)
                    .font(.system(.body, design: .monospaced))
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(concept.title)
    }
}
