//
//  TrackerView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct TrackerView: View {
    @AppStorage("completedProblems") var completedProblemsData: Data = Data()
    @State private var completedMap: [String: Bool] = [:]

    var body: some View {
        NavigationView {
            VStack {
                ProgressView(value: completionPercent)
                    .padding()
                    .accentColor(.green)
                Text("\(completedCount) of \(leetcode75.count) problems completed")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                List {
                    ForEach(leetcode75) { problem in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(problem.title)
                                    .font(.headline)
                                Text("\(problem.topic) • \(problem.difficulty)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                            Spacer()

                            Button(action: {
                                toggleCompletion(for: problem)
                            }) {
                                Image(systemName: isCompleted(problem) ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(isCompleted(problem) ? .green : .gray)
                            }
                        }
                        .padding(.vertical, 6)
                    }
                }
            }
            .navigationTitle("LeetCode 75")
            .onAppear {
                loadCompletedMap()
            }
        }
    }

    // MARK: - Helpers

    private func isCompleted(_ problem: LeetCodeProblem) -> Bool {
        completedMap[problem.title] ?? false
    }

    private func toggleCompletion(for problem: LeetCodeProblem) {
        completedMap[problem.title]?.toggle()
        saveCompletedMap()
    }

    private func saveCompletedMap() {
        if let data = try? JSONEncoder().encode(completedMap) {
            completedProblemsData = data
        }
    }

    private func loadCompletedMap() {
        if let map = try? JSONDecoder().decode([String: Bool].self, from: completedProblemsData) {
            completedMap = map
        } else {
            completedMap = [:]
        }
    }

    private var completedCount: Int {
        completedMap.values.filter { $0 }.count
    }

    private var completionPercent: Double {
        Double(completedCount) / Double(leetcode75.count)
    }
}
