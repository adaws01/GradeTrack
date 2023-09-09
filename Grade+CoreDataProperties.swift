//
//  Grade+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension Grade {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Grade> {
        return NSFetchRequest<Grade>(entityName: "Grade")
    }

    @NSManaged public var earnedPoints: Float
    @NSManaged public var attemptedPoints: Float
    @NSManaged public var totalPoints: Float

}

extension Grade : Identifiable {

}
