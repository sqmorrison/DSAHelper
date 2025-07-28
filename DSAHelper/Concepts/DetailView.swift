//
//  DetailView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct ConceptDetailView: View {
    let concept: DSAConcept

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(concept.title)
                    .font(.largeTitle)
                    .bold()

                Text(concept.description)
                    .font(.body)

                Text("Example Code:")
                    .font(.headline)
                    .padding(.top)

                Text(concept.codeExample)
                    .font(.system(.body, design: .monospaced))
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8)

                if !concept.associatedProblems.isEmpty {
                    Text("Related LeetCode Problems:")
                        .font(.headline)

                    ForEach(concept.associatedProblems, id: \.self) { problem in
                        Text("• \(problem)")
                    }
                }

                Spacer()
            }
            .padding()
        }
        .navigationTitle(concept.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
