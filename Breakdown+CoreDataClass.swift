//
//  Breakdown+CoreDataClass.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-26.
//
//

import Foundation
import CoreData


public class Breakdown: NSManagedObject {

    //EFFECTS: Init
    //Initializer should start with empty components.s
    convenience init(components: [CourseComponent], context: NSManagedObjectContext) {
        self.init(context: context)
        self.components = components
    }
    
    func addComponent(component: CourseComponent) {
        self.components!.append(component)
    }
    
    
    //REQUIRES: component is in the list already. There will never be a GUI option to call this function when the component is not in the list.
    func removeComponent(component: CourseComponent) {
        let componentIndex = self.components!.firstIndex(of: component)!  //returns the first index of the component to be removed.
        self.components!.remove(at: componentIndex)
    }
    
}
