//
//  CourseComponent.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-25.
//

import Foundation

class CourseComponentNoSave: Equatable {
    var name: String
    var pointValue: Float
    
    //EFFECTS: Init
    //Each course component will be initialized with an appropriate name. They should also be assigned a value. This initializer is correct.
    init(name: String, pointValue: Float) {
        self.name = name
        self.pointValue = pointValue
    }
    
    static func == (lhs: CourseComponentNoSave, rhs: CourseComponentNoSave) -> Bool {
        return (lhs.name == rhs.name) && (lhs.pointValue == rhs.pointValue)
    }
}
