//
//  DataController.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-28.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "GradeTrack")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data Failed to Load: \(error.localizedDescription)")
            }
        }
    }
}
