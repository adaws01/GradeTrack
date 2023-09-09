//
//  GradeType.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//

import Foundation

//ENUM for use elsewhere in code. Does not need to be directly serializable, as the cases will be saved as attributes of other entities elsewhere

public enum GradeType {
    case finalGrade
    case selfGrade
    case ungraded
}
