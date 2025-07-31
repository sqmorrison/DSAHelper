//
//  problems.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import Foundation

let leetcode75: [LeetCodeProblem] = [
    // Array & Hashing (5)
    .init(title: "Two Sum", topic: "Array & Hashing", difficulty: "Easy"),
    .init(title: "Valid Anagram", topic: "Array & Hashing", difficulty: "Easy"),
    .init(title: "Group Anagrams", topic: "Array & Hashing", difficulty: "Medium"),
    .init(title: "Top K Frequent Elements", topic: "Array & Hashing", difficulty: "Medium"),
    .init(title: "Product of Array Except Self", topic: "Array & Hashing", difficulty: "Medium"),

    // Two Pointers (4)
    .init(title: "Valid Palindrome", topic: "Two Pointers", difficulty: "Easy"),
    .init(title: "Two Sum II - Input Array Is Sorted", topic: "Two Pointers", difficulty: "Medium"),
    .init(title: "3Sum", topic: "Two Pointers", difficulty: "Medium"),
    .init(title: "Container With Most Water", topic: "Two Pointers", difficulty: "Medium"),

    // Sliding Window (5)
    .init(title: "Best Time to Buy and Sell Stock", topic: "Sliding Window", difficulty: "Easy"),
    .init(title: "Longest Substring Without Repeating Characters", topic: "Sliding Window", difficulty: "Medium"),
    .init(title: "Longest Repeating Character Replacement", topic: "Sliding Window", difficulty: "Medium"),
    .init(title: "Permutation in String", topic: "Sliding Window", difficulty: "Medium"),
    .init(title: "Minimum Window Substring", topic: "Sliding Window", difficulty: "Hard"),

    // Stack (5)
    .init(title: "Valid Parentheses", topic: "Stack", difficulty: "Easy"),
    .init(title: "Min Stack", topic: "Stack", difficulty: "Medium"),
    .init(title: "Evaluate Reverse Polish Notation", topic: "Stack", difficulty: "Medium"),
    .init(title: "Generate Parentheses", topic: "Stack", difficulty: "Medium"),
    .init(title: "Daily Temperatures", topic: "Stack", difficulty: "Medium"),

    // Binary Search (5)
    .init(title: "Binary Search", topic: "Binary Search", difficulty: "Easy"),
    .init(title: "Search a 2D Matrix", topic: "Binary Search", difficulty: "Medium"),
    .init(title: "Koko Eating Bananas", topic: "Binary Search", difficulty: "Medium"),
    .init(title: "Find Minimum in Rotated Sorted Array", topic: "Binary Search", difficulty: "Medium"),
    .init(title: "Search in Rotated Sorted Array", topic: "Binary Search", difficulty: "Medium"),

    // Linked List (5)
    .init(title: "Reverse Linked List", topic: "Linked List", difficulty: "Easy"),
    .init(title: "Merge Two Sorted Lists", topic: "Linked List", difficulty: "Easy"),
    .init(title: "Reorder List", topic: "Linked List", difficulty: "Medium"),
    .init(title: "Remove Nth Node From End of List", topic: "Linked List", difficulty: "Medium"),
    .init(title: "Copy List with Random Pointer", topic: "Linked List", difficulty: "Medium"),

    // Trees (10)
    .init(title: "Invert Binary Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Maximum Depth of Binary Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Binary Tree Level Order Traversal", topic: "Trees", difficulty: "Medium"),
    .init(title: "Same Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Balanced Binary Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Binary Search Tree Validation (Validate Binary Search Tree)", topic: "Trees", difficulty: "Medium"),
    .init(title: "Lowest Common Ancestor of a Binary Search Tree", topic: "Trees", difficulty: "Medium"),
    .init(title: "Diameter of Binary Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Subtree of Another Tree", topic: "Trees", difficulty: "Easy"),
    .init(title: "Serialize and Deserialize Binary Tree", topic: "Trees", difficulty: "Hard"),

    // Tries (3)
    .init(title: "Implement Trie (Prefix Tree)", topic: "Tries", difficulty: "Medium"),
    .init(title: "Design Add and Search Words Data Structure", topic: "Tries", difficulty: "Medium"),
    .init(title: "Word Search II", topic: "Tries", difficulty: "Hard"),

    // Heap / Priority Queue (3)
    .init(title: "Kth Largest Element in an Array", topic: "Heap", difficulty: "Medium"),
    .init(title: "Task Scheduler", topic: "Heap", difficulty: "Medium"),
    .init(title: "Merge K Sorted Lists", topic: "Heap", difficulty: "Hard"), // common stand-in

    // Backtracking (4)
    .init(title: "Subsets", topic: "Backtracking", difficulty: "Medium"),
    .init(title: "Combination Sum", topic: "Backtracking", difficulty: "Medium"),
    .init(title: "Permutations", topic: "Backtracking", difficulty: "Medium"),
    .init(title: "Word Search", topic: "Backtracking", difficulty: "Medium"),

    // Graphs (5)
    .init(title: "Number of Islands", topic: "Graphs", difficulty: "Medium"),
    .init(title: "Clone Graph", topic: "Graphs", difficulty: "Medium"),
    .init(title: "Course Schedule", topic: "Graphs", difficulty: "Medium"),
    .init(title: "Pacific Atlantic Water Flow", topic: "Graphs", difficulty: "Medium"),
    .init(title: "Redundant Connection", topic: "Graphs", difficulty: "Medium"),

    // 1D Dynamic Programming (5)
    .init(title: "Climbing Stairs", topic: "1D Dynamic Programming", difficulty: "Easy"),
    .init(title: "House Robber", topic: "1D Dynamic Programming", difficulty: "Medium"),
    .init(title: "House Robber II", topic: "1D Dynamic Programming", difficulty: "Medium"),
    .init(title: "Longest Palindromic Substring", topic: "1D Dynamic Programming", difficulty: "Medium"),
    .init(title: "Palindromic Substrings", topic: "1D Dynamic Programming", difficulty: "Medium"),

    // 2D Dynamic Programming (5)
    .init(title: "Longest Common Subsequence", topic: "2D Dynamic Programming", difficulty: "Medium"),
    .init(title: "Best Time to Buy and Sell Stock with Cooldown", topic: "2D Dynamic Programming", difficulty: "Medium"),
    .init(title: "Coin Change", topic: "2D Dynamic Programming", difficulty: "Medium"),
    .init(title: "Maximum Product Subarray", topic: "2D Dynamic Programming", difficulty: "Medium"),

    // Greedy (5)
    .init(title: "Maximum Subarray", topic: "Greedy", difficulty: "Easy"),
    .init(title: "Jump Game", topic: "Greedy", difficulty: "Medium"),
    .init(title: "Gas Station", topic: "Greedy", difficulty: "Medium"),
    .init(title: "Merge Intervals", topic: "Greedy", difficulty: "Medium"),
    .init(title: "Insert Interval", topic: "Greedy", difficulty: "Medium"),

    // Intervals (3)
    .init(title: "Meeting Rooms", topic: "Intervals", difficulty: "Easy"),
    .init(title: "Meeting Rooms II", topic: "Intervals", difficulty: "Medium"),
    .init(title: "Non-overlapping Intervals", topic: "Intervals", difficulty: "Medium"),

    // Bit Manipulation (4)
    .init(title: "Single Number", topic: "Bit Manipulation", difficulty: "Easy"),
    .init(title: "Number of 1 Bits", topic: "Bit Manipulation", difficulty: "Easy"),
    .init(title: "Counting Bits", topic: "Bit Manipulation", difficulty: "Easy"),
    .init(title: "Reverse Bits", topic: "Bit Manipulation", difficulty: "Easy")
]
