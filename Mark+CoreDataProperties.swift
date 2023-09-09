//
//  Mark+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension Mark {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mark> {
        return NSFetchRequest<Mark>(entityName: "Mark")
    }

    @NSManaged public var earnedPoints: Float
    @NSManaged public var totalPoints: Float

}

extension Mark : Identifiable {

}
