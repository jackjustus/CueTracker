////
////  User.swift
////  CueTracker
////
////  Created by Jack Justus on 11/26/24.
////
//
//import Foundation
//import SwiftData
//
//@Model
//class User: ObservableObject {
//    
//    var cueLists : [CueList]
//    var selectedCueList : UUID
//    
//    // Database things
////    private var applicationSupportDirectory: URL {
////        FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
////    }
////    private var filename = "database.json"
////    private var databaseFileUrl: URL {
////        applicationSupportDirectory.appendingPathComponent(filename)
////    }
//    
//
//    
//    // Initializer
//    init() {
//        
//        // Init values to nothing
//        cueLists = []
//        selectedCueList = UUID()
//        
////        let testData = CueList(number: 1)
////        
////        let encoder = JSONEncoder()
////        encoder.dateEncodingStrategy = .iso8601
////        encoder.outputFormatting = .prettyPrinted
////        
////        
////        do {
////            print("saving data")
////            let data = try encoder.encode(testData)
////            print(data[1])
////            try data.write(to: databaseFileUrl)
////        } catch (let error){
////            print("failed \(error)")
////        }
//
//        
//        
//        // Init first cuelist if there are none
//        if cueLists.isEmpty {
//            cueLists = [CueList(number: 1)]
//            selectedCueList = cueLists[0].ID
//        }
//    }
//    
//
//}
//
//// Getting cue lists from JSON File
////    private func loadCueLists(from storeFileData: Data) -> [CueList] {
////        do {
////            let decoder = JSONDecoder()
////            decoder.dateDecodingStrategy = .iso8601
////            return try decoder.decode([CueList].self, from: storeFileData)
////        } catch {
////            print(error)
////            return []
////        }
////    }
////
////    // Save cue lists from JSON File
////    func save() {
////        print("Attempting to save \(cueLists[0])")
////        let encoder = JSONEncoder()
////        encoder.dateEncodingStrategy = .iso8601
////        encoder.outputFormatting = .prettyPrinted
////        do {
////            let data = try encoder.encode(cueLists)
////            if FileManager.default.fileExists(atPath: databaseFileUrl.path) {
////                try FileManager.default.removeItem(at: databaseFileUrl)
////            }
////            try data.write(to: databaseFileUrl)
////        } catch {
////            //..
////            print("saving failed")
////        }
////    }
//
//
//// Init variables to dummy values before reading the JSON
////        self.cueLists = []
////        self.selectedCueList = UUID()
////
////        // Read the JSON
////        if let data = FileManager.default.contents(atPath: databaseFileUrl.path) {
////            cueLists = loadCueLists(from: data)
////        } else {
////            if let bundledDatabaseUrl = Bundle.main.url(forResource: "database", withExtension: "json") {
////                if let data = FileManager.default.contents(atPath: bundledDatabaseUrl.path) {
////                    cueLists = loadCueLists(from: data)
////                }
////            } else {
////                cueLists = []
////            }
////        }
