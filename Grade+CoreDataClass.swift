//
//  Grade+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class Grade: NSManagedObject {

    //EFFECTS: Init.
    //Grades are initialized to accompany indifidual courses. When we initialize a course grade, we should assume no points have been earned. Total points will be populated after this is initialized.
    convenience init(earnedPoints: Float, attemptedPoints: Float, totalPoints: Float, context: NSManagedObjectContext) {
        self.init(context: context)
        self.earnedPoints = earnedPoints
        self.attemptedPoints = attemptedPoints
        self.totalPoints = totalPoints
    }
    
    func setTotalPoints(totalPoints: Float) {
        self.totalPoints = totalPoints
    }
    
    func setEarnedPoints(earnedPoints: Float) {
        self.earnedPoints = earnedPoints
    }
    
    func setAttemptedPoints(attemptedPoints: Float) {
        self.attemptedPoints = attemptedPoints
    }
    
    func calculateTotalPercentage() -> Float {
        return (self.earnedPoints / self.totalPoints)
    }
    
    func calculateAttemptedPercentage() -> Float {
        return (self.earnedPoints / self.attemptedPoints)
    }
}
