//
//  CueTrackerApp.swift
//  CueTracker
//
//  Created by Jack Justus on 11/8/24.
//

import SwiftUI
import OSCKit

@main
struct CueTrackerApp: App {
    @StateObject var oscManager = OSCManager()
    var body: some Scene {
        WindowGroup {
            ContentView(user: User())
                .environmentObject(oscManager)
        }
    }
}
