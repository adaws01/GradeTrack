//
//  CourseComponent+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension CourseComponent {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CourseComponent> {
        return NSFetchRequest<CourseComponent>(entityName: "CourseComponent")
    }

    @NSManaged public var name: String?
    @NSManaged public var pointValue: Float

}

extension CourseComponent : Identifiable {

}
