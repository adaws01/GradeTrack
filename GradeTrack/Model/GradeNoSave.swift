//
//  Grade.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-25.
//

import Foundation

class GradeNoSave {
    var earnedPoints: Float
    var attemptedPoints: Float
    var totalPoints: Float
    
    //EFFECTS: Init.
    //Grades are initialized to accompany indifidual courses. When we initialize a course grade, we should assume no points have been earned. Total points will be populated after this is initialized.
    init(earnedPoints: Float, attemptedPoints: Float, totalPoints: Float) {
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
}
