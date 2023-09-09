//
//  Course+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var name: String?
    @NSManaged public var grade: Grade?
    @NSManaged public var breakdown: Breakdown?
    @NSManaged public var assignments: [Assignment]?

}

extension Course : Identifiable {

}
