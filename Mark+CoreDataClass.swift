//
//  Mark+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class Mark: NSManagedObject {
    
    //EFFECTS: Init
    // Marks are always initialized with their assignments. They are automatically given zero points earned.
    convenience init(earnedPoints: Float, totalPoints: Float, context: NSManagedObjectContext) {
        self.init(context: context)
        self.earnedPoints = earnedPoints
        self.totalPoints = totalPoints
    }
    
    func setTotalPoints(totalPoints: Float) {
        self.totalPoints = totalPoints
    }
    
    func setEarnedPoints(earnedPoints: Float) {
        self.earnedPoints = earnedPoints
    }
}
