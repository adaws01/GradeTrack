//
//  AssignmentsMenu.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-28.
//

import SwiftUI

struct AssignmentsMenu: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var courses: FetchedResults<Course>
    
    //EFFECTS: Extracts the assignments from all of the courses present in the moc.
    private func setup() -> [Assignment] {
        var assignments: [Assignment] = []
        for course in courses {
            for assignment in course.assignments! {
                assignments.append(assignment)
            }
        }
        return assignments
    }
    
    var body: some View {
        let assignments = setup()
        
        Form {
            ForEach(courses) { course in
                Section(header: Text(course.name ?? "Unknown Course")) {
                    List {
                        ForEach(assignments) { assignment in
                            NavigationLink(destination: MainMenu()) {  //TODO: Change destination
                                Text(assignment.name ?? "Unnamed Assignment")
                            }
                        }
                    }
                }
            }
        }
    }
}

//struct AssignmentsMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        AssignmentsMenu()
//    }
//}
