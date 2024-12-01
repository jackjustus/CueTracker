//
//  ContentView.swift
//  CueTracker
//
//  Created by Jack Justus on 11/8/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var cues : [Cue]
    
    var body: some View {

        VStack {
            
            CueDetailView(cues: cues)
                .toolbar {
                    Button(action: {
                        print("Adding cue")
                        context.insert(Cue())
                    }) {
                        Label("Add Cue", systemImage: "plus")
                            .labelsHidden()
                    }
                    
                    Button(action: {
                        // TODO: IMPLEMENT
                    }) {
                        Label("Save CueList", systemImage: "square.and.arrow.down")
                            .labelsHidden()
                    }
                    .disabled(context.hasChanges)
                    
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
