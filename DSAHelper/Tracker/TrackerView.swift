//
//  TrackerView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//
import SwiftUI

struct TrackerView: View {
    @State private var completedProblems: Set<String> = []
    @State private var selectedFilter: Filter = .all
    @State private var sortBy: SortOption = .title
    
    let saveKey = "completed_problems.json"

    enum Filter: String, CaseIterable {
        case all = "All"
        case completed = "Completed"
        case incomplete = "Incomplete"
    }

    enum SortOption: String, CaseIterable {
        case title = "Title"
        case difficulty = "Difficulty"
        case topic = "Topic"
    }

    var body: some View {
        NavigationView {
            VStack {
                ProgressView(value: completionPercent)
                    .padding()
                    .accentColor(.green)
                Text("\(completedCount) of \(leetcode75.count) problems completed")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Picker("Filter", selection: $selectedFilter) {
                        ForEach(Filter.allCases, id: \.self) { filter in
                            Text(filter.rawValue).tag(filter)
                        }
                    }
                    .pickerStyle(.menu)

                    Picker("Sort", selection: $sortBy) {
                        ForEach(SortOption.allCases, id: \.self) { sort in
                            Text(sort.rawValue).tag(sort)
                        }
                    }
                    .pickerStyle(.menu)
                }
                .padding(.horizontal)

                List {
                    ForEach(filteredProblems) { problem in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(problem.title)
                                    .font(.headline)
                                HStack(spacing: 6) {
                                    Text(problem.topic)
                                        .font(.caption)
                                        .foregroundColor(.gray)

                                    Text(problem.difficulty)
                                        .font(.caption2)
                                        .padding(.horizontal, 6)
                                        .padding(.vertical, 2)
                                        .background(color(for: problem.difficulty).opacity(0.2))
                                        .foregroundColor(color(for: problem.difficulty))
                                        .clipShape(Capsule())
                                }
                            }

                            Spacer()

                            Image(systemName: isCompleted(problem) ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isCompleted(problem) ? .green : .gray)
                        }
                        .padding(.vertical, 6)
                        .contentShape(Rectangle()) // Makes the entire row tappable
                        .onTapGesture {
                            toggleCompletion(for: problem)
                        }
                    }
                }
            }
            .navigationTitle("LeetCode 75")
            .onAppear {
                loadCompletionState()
            }
        }
    }

    // MARK: - Helpers

    func isCompleted(_ problem: LeetCodeProblem) -> Bool {
        completedProblems.contains(problem.id)
    }

    func toggleCompletion(for problem: LeetCodeProblem) {
        if completedProblems.contains(problem.id) {
            completedProblems.remove(problem.id)
        } else {
            completedProblems.insert(problem.id)
        }
        saveCompletionState()
    }

    func saveCompletionState() {
        let url = getDocumentsDirectory().appendingPathComponent(saveKey)
        do {
            let data = try JSONEncoder().encode(completedProblems)
            try data.write(to: url)
        } catch {
            print("Failed to save completion state: \(error.localizedDescription)")
        }
    }

    func loadCompletionState() {
        let url = getDocumentsDirectory().appendingPathComponent(saveKey)
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(Set<String>.self, from: data)
            completedProblems = decoded
        } catch {
            print("No saved data found or failed to load: \(error.localizedDescription)")
            completedProblems = []
        }
    }

    func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }

    private var completedCount: Int {
        completedProblems.count
    }

    private var completionPercent: Double {
        guard leetcode75.count > 0 else { return 0 }
        return Double(completedCount) / Double(leetcode75.count)
    }
    
    private var filteredProblems: [LeetCodeProblem] {
        var problems = leetcode75

        // Apply filter
        problems = problems.filter { problem in
            switch selectedFilter {
            case .all:
                return true
            case .completed:
                return isCompleted(problem)
            case .incomplete:
                return !isCompleted(problem)
            }
        }

        // Apply sort
        switch sortBy {
        case .title:
            problems.sort { $0.title < $1.title }
        case .difficulty:
            problems.sort { $0.difficulty < $1.difficulty }
        case .topic:
            problems.sort { $0.topic < $1.topic }
        }

        return problems
    }
    
    func color(for difficulty: String) -> Color {
        switch difficulty.lowercased() {
        case "easy":
            return .green
        case "medium":
            return .orange
        case "hard":
            return .red
        default:
            return .gray
        }
    }
}

