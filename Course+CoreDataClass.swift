//
//  Course+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class Course: NSManagedObject {

    //EFFECTS: Init.
    //Course always needs a name. It's name will be defined upon creation in the GUI
    //Grade, and Breakdown can possibly be empty. These should be optional (I think)
    //^ Following above: TODO: Write Initializer functions to initialize grades and gradeBreakdowns if one is not already attached to the course
    //List of Assignments should be initialized as an empty list.
    //^ Following above: Need method to add and remove assignments from the list
    
    
    //TODO: Implement the last update feature everywhere. This information will need to be passed between objects. As such, this will be a later addition to the app.
    //TODO: Last Update will automatically take the date that the course was modified. All additional methods on a class should change the date updated to the current date. I will need to figure out how to write the code to record the current date and time. Review the video in notes.
    
    convenience init(name: String,
                     //lastUpdate: Date,
                     context: NSManagedObjectContext) {
        self.init(context: context)
        self.name = name
        self.grade = nil
        self.breakdown = nil
        self.assignments = []
        //self.lastUpdate = lastUpdate
    }
    
}
