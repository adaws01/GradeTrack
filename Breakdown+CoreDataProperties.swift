//
//  Breakdown+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension Breakdown {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Breakdown> {
        return NSFetchRequest<Breakdown>(entityName: "Breakdown")
    }

    @NSManaged public var components: [CourseComponent]?

}

extension Breakdown : Identifiable {

}
