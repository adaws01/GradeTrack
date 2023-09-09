//
//  Mark.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-25.
//

import Foundation

class MarkNoSave {
    var earnedPoints: Float
    var totalPoints: Float
    
    //EFFECTS: Init
    // Marks are always initialized with their assignments. They are automatically given zero points earned.
    init(earnedPoints: Float, totalPoints: Float) {
        self.earnedPoints = earnedPoints
        self.totalPoints = totalPoints
    }
    
    func setTotalPoints(totalPoints: Float) {
        self.totalPoints = totalPoints
    }
    
    func setEarnedPoints(earnedPoints: Float) {
        self.earnedPoints = earnedPoints
    }
}
