//
//  TrackerConcept.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import Foundation

struct LeetCodeProblem: Identifiable, Codable {
    var id: String { title } // use title as ID, must be unique
    let title: String
    let topic: String
    let difficulty: String
}
