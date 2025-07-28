//
//  DSAConcept.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import Foundation

struct DSAConcept: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let codeExample: String
    let associatedProblems: [String]
}
