//
//  CueTrackerApp.swift
//  CueTracker
//
//  Created by Jack Justus on 11/8/24.
//

import SwiftUI
import OSCKit
import SwiftData

@main
struct CueTrackerApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Cue.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for:schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
