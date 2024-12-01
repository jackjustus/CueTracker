//
//  CueTableView.swift
//  CueTracker
//
//  Created by Jack Justus on 11/23/24.
//

import SwiftUI



struct CueDetailView: View {
    
    @State var cues: [Cue]
    
    @State var searchText: String = ""
    @State private var selection = Set<Cue.ID>()
    @State private var sortOrder: [KeyPathComparator<Cue>] = [
        .init(\.number, order: SortOrder.forward)
    ]
    
    @State var currentCueNum : Double = 2
    
    var body: some View {
        
        
        
        Table($cues, selection: $selection) {
            
            // Cue Column
            TableColumn("Cue") { $cue in
                    Text(String(cue.number))
                        .font(.title)
                        .bold()
            }
            .width(min: 30,ideal: 50,max: 100)
            
            // Cue Column
            TableColumn("Label") {$cue in
                TextField("Label", text: $cue.label)
                    .font(.title2)
                    
            }
            
            // Notes Column
            TableColumn("Notes") {$cue in
                TextField("Note", text: $cue.notes)
                    .padding(0)
            }
        }
        .tableStyle(.bordered)
        .tableColumnHeaders(.automatic)
        .colorScheme(.dark)
        .searchable(text: $searchText)
        .navigationSubtitle("ETC Eos")
    }
}

#Preview {
    CueDetailView(cues: [Cue(), Cue()])
}
