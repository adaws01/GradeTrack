//
//  Assignment.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-25.
//

import Foundation

class AssignmentNoSave {
    var name: String
    var dueDate: DateComponents?
    var mark: MarkNoSave
    var gradeType: String  //one of either "ungraded", "self grade", or "final grade"  (I can't get the enum to work with CoreData)
    
    //EFFECTS: Init
    //Assignments come with names.
    //Assignments are declared from inside a course. This way, each assignment must always be attached to a single course at a time.
    //Due dates might not be assigned. Check not nill when working into calendars.
    //Mark will always be assigned. Should be initialized at zero points earned.
    //gradeType should be initialized as Ungraded.
    init(name: String, dueDate: DateComponents, points: Float) {
        self.name = name
        self.dueDate = nil
        self.mark = MarkNoSave(earnedPoints: 0.0, totalPoints: points)
        self.gradeType = "ungraded"
    }
}


