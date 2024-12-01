//
//  Cue.swift
//  CueTracker
//
//  Created by Jack Justus on 11/23/24.
//

import Foundation

class Cue : Identifiable, Codable {
    
    var id: UUID
    
    var number: Double
    var label: String
    var notes: String
    
    init(_ number: Double,_ label: String,_ notes: String) {
        self.id = UUID()
        self.number = number
        self.label = label
        self.notes = notes
    }
    
    convenience init(_ number: Double, _ label: String) {
        self.init(number, label, "")
    }
    
    convenience init(_ number: Double) {
        self.init(number, "", "")
    }
    
    func setNumber(number: Double) {
        self.number = number
    }
}
