//
//  Breakdown.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-25.
//

import Foundation

class BreakdownNoSave {
    var components: [CourseComponentNoSave]
    
    //EFFECTS: Init
    //Initializer should start with empty components.s
    init(components: [CourseComponentNoSave]) {
        self.components = components
    }
    
    func addComponent(component: CourseComponentNoSave) {
        self.components.append(component)
    }
    
    
    //REQUIRES: component is in the list already. There will never be a GUI option to call this function when the component is not in the list.
    func removeComponent(component: CourseComponentNoSave) {
        let componentIndex = self.components.firstIndex(of: component)!  //returns the first index of the component to be removed.
        self.components.remove(at: componentIndex)
    }
}
