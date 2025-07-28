//
//  ContentView.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ConceptsView()
                .tabItem {
                    Label("Concepts", systemImage: "book.closed")
                }
           
            TrackerView()
                .tabItem {
                    Label("Tracker", systemImage: "checkmark.square")
                }
        }
    }
}
