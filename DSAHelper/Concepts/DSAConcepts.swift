//
//  DSAData.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import Foundation

let dsaConcepts: [DSAConcept] = [
    DSAConcept(
        title: "Array",
        description: "An array is a collection of elements identified by index. Supports fast random access.",
        codeExample: """
        let arr = [1, 2, 3, 4]
        print(arr[0]) // 1
        """,
        associatedProblems: ["Two Sum", "Product of Array Except Self", "Maximum Subarray"]
    ),

    DSAConcept(
        title: "Linked List",
        description: "A linked list consists of nodes where each node contains data and a reference to the next node.",
        codeExample: """
        class ListNode {
            var val: Int
            var next: ListNode?
            init(_ val: Int) { self.val = val }
        }
        """,
        associatedProblems: ["Reverse Linked List", "Merge Two Sorted Lists"]
    ),

    DSAConcept(
        title: "Stack",
        description: "Stack is a LIFO data structure supporting push and pop operations.",
        codeExample: """
        var stack = [Int]()
        stack.append(10)
        stack.removeLast()
        """,
        associatedProblems: ["Valid Parentheses", "Min Stack"]
    ),

    DSAConcept(
        title: "Queue",
        description: "Queue is a FIFO data structure supporting enqueue and dequeue operations.",
        codeExample: """
        var queue = [Int]()
        queue.append(5)       // enqueue
        queue.removeFirst()   // dequeue
        """,
        associatedProblems: ["Implement Queue using Stacks", "Number of Islands"]
    ),

    DSAConcept(
        title: "Binary Tree",
        description: "A hierarchical data structure with nodes having at most two children.",
        codeExample: """
        class TreeNode {
            var val: Int
            var left: TreeNode?
            var right: TreeNode?
            init(_ val: Int) { self.val = val }
        }
        """,
        associatedProblems: ["Invert Binary Tree", "Binary Tree Level Order Traversal"]
    ),

    DSAConcept(
        title: "Binary Search Tree",
        description: "A binary tree where left child < node < right child. Enables efficient search.",
        codeExample: """
        func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            guard let root = root else { return nil }
            if root.val == val { return root }
            if val < root.val {
                return searchBST(root.left, val)
            } else {
                return searchBST(root.right, val)
            }
        }
        """,
        associatedProblems: ["Validate Binary Search Tree", "Lowest Common Ancestor of BST"]
    ),

    DSAConcept(
        title: "Trie",
        description: "A prefix tree used to store strings and enable fast prefix searches.",
        codeExample: """
        class TrieNode {
            var children = [Character: TrieNode]()
            var isWord = false
        }
        """,
        associatedProblems: ["Implement Trie", "Word Search II"]
    ),

    DSAConcept(
        title: "Graph",
        description: "A set of nodes connected by edges, used to model relationships.",
        codeExample: """
        var graph = [[Int]](repeating: [], count: 5)
        graph[0].append(1)
        graph[1].append(2)
        """,
        associatedProblems: ["Number of Islands", "Clone Graph"]
    ),

    DSAConcept(
        title: "Hash Table",
        description: "Data structure that stores key-value pairs for fast lookup.",
        codeExample: """
        var dict = [String: Int]()
        dict["apple"] = 3
        print(dict["apple"] ?? 0) // 3
        """,
        associatedProblems: ["Two Sum", "Group Anagrams"]
    ),

    DSAConcept(
        title: "Heap / Priority Queue",
        description: "A special tree-based structure where parent nodes are ordered with respect to children.",
        codeExample: """
        import Foundation
        var heap = Heap<Int>(sort: <) // Custom heap implementation required
        """,
        associatedProblems: ["Kth Largest Element in an Array", "Task Scheduler"]
    ),

    DSAConcept(
        title: "Sorting Algorithms",
        description: "Methods to rearrange elements in a specific order, like quicksort and mergesort.",
        codeExample: """
        let sorted = [3, 1, 4].sorted()
        print(sorted) // [1, 3, 4]
        """,
        associatedProblems: ["Sort Colors", "Merge Intervals"]
    ),

    DSAConcept(
        title: "Binary Search",
        description: "Search algorithm that divides sorted array in halves to find a target.",
        codeExample: """
        func binarySearch(_ arr: [Int], _ target: Int) -> Int? {
            var left = 0, right = arr.count - 1
            while left <= right {
                let mid = (left + right) / 2
                if arr[mid] == target { return mid }
                else if arr[mid] < target { left = mid + 1 }
                else { right = mid - 1 }
            }
            return nil
        }
        """,
        associatedProblems: ["Binary Search", "Search in Rotated Sorted Array"]
    ),

    DSAConcept(
        title: "Two Pointers",
        description: "Technique that uses two indices to iterate and solve problems on arrays or strings.",
        codeExample: """
        func twoSumSorted(_ nums: [Int], _ target: Int) -> [Int] {
            var left = 0, right = nums.count - 1
            while left < right {
                let sum = nums[left] + nums[right]
                if sum == target { return [left, right] }
                else if sum < target { left += 1 }
                else { right -= 1 }
            }
            return []
        }
        """,
        associatedProblems: ["3Sum", "Container With Most Water"]
    ),

    DSAConcept(
        title: "Sliding Window",
        description: "Technique for problems involving subarrays or substrings by maintaining a window.",
        codeExample: """
        func maxSumSubarray(_ nums: [Int], _ k: Int) -> Int {
            var windowSum = 0, maxSum = 0
            for i in 0..<nums.count {
                windowSum += nums[i]
                if i >= k { windowSum -= nums[i - k] }
                maxSum = max(maxSum, windowSum)
            }
            return maxSum
        }
        """,
        associatedProblems: ["Longest Substring Without Repeating Characters", "Minimum Window Substring"]
    ),

    DSAConcept(
        title: "Dynamic Programming",
        description: "Method for solving problems by breaking into overlapping subproblems and caching results.",
        codeExample: """
        func fib(_ n: Int) -> Int {
            var dp = [0, 1]
            if n < 2 { return dp[n] }
            for i in 2...n {
                dp.append(dp[i-1] + dp[i-2])
            }
            return dp[n]
        }
        """,
        associatedProblems: ["Climbing Stairs", "Coin Change"]
    ),

    DSAConcept(
        title: "Backtracking",
        description: "Algorithmic technique for solving problems incrementally and undoing choices.",
        codeExample: """
        func permute(_ nums: [Int]) -> [[Int]] {
            var result = [[Int]]()
            var path = [Int]()
            var used = [Bool](repeating: false, count: nums.count)

            func backtrack() {
                if path.count == nums.count {
                    result.append(path)
                    return
                }
                for i in 0..<nums.count {
                    if used[i] { continue }
                    used[i] = true
                    path.append(nums[i])
                    backtrack()
                    path.removeLast()
                    used[i] = false
                }
            }
            backtrack()
            return result
        }
        """,
        associatedProblems: ["Subsets", "Combination Sum"]
    ),

    DSAConcept(
        title: "Greedy Algorithms",
        description: "Make the locally optimal choice at each step aiming for global optimum.",
        codeExample: """
        func maxProfit(_ prices: [Int]) -> Int {
            var profit = 0
            for i in 1..<prices.count {
                if prices[i] > prices[i - 1] {
                    profit += prices[i] - prices[i - 1]
                }
            }
            return profit
        }
        """,
        associatedProblems: ["Jump Game", "Gas Station"]
    ),

    DSAConcept(
        title: "Bit Manipulation",
        description: "Using bitwise operations to solve problems efficiently.",
        codeExample: """
        func singleNumber(_ nums: [Int]) -> Int {
            var result = 0
            for num in nums { result ^= num }
            return result
        }
        """,
        associatedProblems: ["Single Number", "Counting Bits"]
    )
]
