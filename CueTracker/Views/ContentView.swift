//
//  ContentView.swift
//  CueTracker
//
//  Created by Jack Justus on 11/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var user : User
    
    var body: some View {

        VStack {
            CueDetailView(cueList: user.cueLists[0])
                .toolbar {
                    Button(action: addCue) {
                        Label("Add Cue", systemImage: "plus")
                            .labelsHidden()
                    }
                    Button(action: saveCues) {
                        Label("Save CueList", systemImage: "square.and.arrow.down")
                            .labelsHidden()
                    }
                    
                }
        }
        .padding()
    }
}

extension ContentView {
    
    func addCue() {
        user.cueLists[0].addCue(number: 2)
    }
    
    func saveCues() {
//        print("saving")
//        user.save()
    }
}

#Preview {
    var user = User()
    var newCueList = CueList(number: 1)
    
    
    ContentView(user: user)
}
