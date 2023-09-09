//
//  Assignment+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class Assignment: NSManagedObject {
    
    convenience init(name: String, dueDate: DateComponents, points: Float, context: NSManagedObjectContext) {
        self.init(context: context)
        self.name = name
        self.dueDate = nil
        self.mark = Mark(earnedPoints: 0.0, totalPoints: points, context: context)
        self.gradeType = "ungraded"
    }

}
