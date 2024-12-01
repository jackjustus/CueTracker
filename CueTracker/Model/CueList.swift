////
////  CueList.swift
////  CueTracker
////
////  Created by Jack Justus on 11/23/24.
////
//
//import Foundation
//import SwiftData
//
//
//class CueList : ObservableObject, Codable {
//    
//    var ID: UUID
//    
//    var number: Int
//    @Published var cues: [Cue]
//    var name: String
//    
//    init(number: Int) {
//        self.ID = UUID()
//        self.number = number
//        self.cues = [Cue(1)]
//        self.name = "Cuelist \(number)"
//    }
//    
//    // Init with an array of cues
//    init (cues: [Cue], number: Int) {
//        self.ID = UUID()
//        self.number = number
//        self.cues = cues
//        self.name = "Cuelist \(number)"
//    }
//    
//    func getCues() -> [Cue] {
//        return cues
//    }
//    
//    func addCue(number: Double) -> Void {
//        cues.append(Cue(number))
//    }
//    func addCue(_ cue: Cue) -> Void {
//        cues.append(cue)
//    }
//    
//    
//    // Custom Encoding
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//        try container.encode(number, forKey: .number)
//        try container.encode(ID, forKey: .id)
//        try container.encode(cues, forKey: .cues)
//    }
//    
//    // Decoding function
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.number = try container.decode(Int.self, forKey: .number)
//        self.ID = try container.decode(UUID.self, forKey: .id)
//        self.cues = try container.decode([Cue].self, forKey: .cues)
//    }
//
//    
//    enum CodingKeys: String, CodingKey {
//        case name
//        case number
//        case id
//        case cues
//    }
//    
//}
