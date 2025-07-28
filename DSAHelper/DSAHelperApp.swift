//
//  DSAHelperApp.swift
//  DSAHelper
//
//  Created by Quinn M on 7/28/25.
//

import SwiftUI

@main
struct DSAHelperApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
