//
//  CourseComponent+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class CourseComponent: NSManagedObject {

    //EFFECTS: Init
    //Each course component will be initialized with an appropriate name. They should also be assigned a value. This initializer is correct.
    convenience init(name: String, pointValue: Float, context: NSManagedObjectContext) {
        self.init(context: context)
        self.name = name
        self.pointValue = pointValue
    }
    
    //Rewritten Equatable statement
    static func == (lhs: CourseComponent, rhs: CourseComponent) -> Bool {
        return (lhs.name == rhs.name) && (lhs.pointValue == rhs.pointValue)
    }
    
}
