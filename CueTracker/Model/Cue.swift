//
//  Cue.swift
//  CueTracker
//
//  Created by Jack Justus on 11/23/24.
//

import Foundation
import SwiftData

@Model
class Cue : Identifiable , Codable {
        
    var id : UUID
    var number: Double
    var label: String
    var notes: String
    
    init() {
        self.id = UUID()
        self.number = 0.0
        self.label = ""
        self.notes = ""
    }
    
    init(_ number: Double,_ label: String,_ notes: String) {
        self.id = UUID()
        self.number = number
        self.label = label
        self.notes = notes
    }
    
    // Manually implement decoding
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .ID)
        self.number = try container.decode(Double.self, forKey: .number)
        self.label = try container.decode(String.self, forKey: .label)
        self.notes = try container.decode(String.self, forKey: .notes)
    }
    
    // Manually implementing encoding
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .ID)
        try container.encode(number, forKey: .number)
        try container.encode(label, forKey: .label)
        try container.encode(notes, forKey: .notes)
    }
    
    enum CodingKeys: String, CodingKey {
        case ID = "id"  // Match JSON key name if necessary
        case number
        case label
        case notes
    }
//
//    convenience init(_ number: Double, _ label: String) {
//        self.init(number, label, "")
//    }
//    
//    convenience init(_ number: Double) {
//        self.init(number, "", "")
//    }
//    
//    func setNumber(number: Double) {
//        self.number = number
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
//    enum CodingKeys: String, CodingKey {
//        case ID
//        case number
//        case label
//        case notes
//    }
//    
//    // Custom Encoding
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        
//        try container.encode(self.ID, forKey: .ID)
//        try container.encode(self.number, forKey: .number)
//        try container.encode(self.label, forKey: .label)
//        try container.encode(self.notes, forKey: .notes)
//    }
//    
//    // Custom Decoding
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.ID = try container.decode(UUID.self, forKey: .ID)
//        self.number = try container.decode(Double.self, forKey: .number)
//        self.label = try container.decode(String.self, forKey: .label)
//        self.notes = try container.decode(String.self, forKey: .notes)
//    }
}
