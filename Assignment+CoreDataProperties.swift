//
//  Assignment+CoreDataProperties.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


extension Assignment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Assignment> {
        return NSFetchRequest<Assignment>(entityName: "Assignment")
    }

    @NSManaged public var dueDate: DateComponents?
    @NSManaged public var gradeType: String?
    @NSManaged public var mark: Mark?
    @NSManaged public var name: String?

}

extension Assignment : Identifiable {

}
