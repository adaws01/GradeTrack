//
//  MainMenu.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-21.
//

import SwiftUI

struct MainMenu: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var courses: FetchedResults<Course>
    @State var showSheet: Bool = false
    
    func removeCourses(at offsets: IndexSet) {
        for offset in offsets {
            let course = courses[offset]
            moc.delete(course)
        }
        try? moc.save()
    }
    
    private func calculateGradeColour(course: Course) -> Color {
        if (course.grade?.calculateAttemptedPercentage() ?? 0 > 80) {
            return .green
        } else if (course.grade?.calculateAttemptedPercentage() ?? 0 > 60) {
            return .yellow
        } else if (course.grade?.calculateAttemptedPercentage() ?? 0 > 50) {
            return .orange
        } else {
            return .red
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Courses")) {
                    List {
                       ForEach(courses) { course in
                            NavigationLink(destination: CourseMenu(course: course)) {
                                Text(course.name ?? "Unnamed Course")
                                Text(String(course.grade?.calculateAttemptedPercentage() ?? 0) + "%")
                                    .padding(2.0)
                                    .font(.body
                                        .weight(.bold))
                                    .background(calculateGradeColour(course: course))
                                    .foregroundColor(Color.white)
                            }
                       }.onDelete(perform: removeCourses)
                    }
                }
                Section {
                    NavigationLink(destination: AssignmentsMenu(moc: _moc, courses: _courses)) {
                        Text("Review Recent Assignments")
                    }
                    Button("Add Course") {
                        
                        showSheet.toggle()
                        
//                        //TODO: Change this to transfer us to the new course dialog
//
//                        let courseExample = Course(name: "CLASS 101", context: moc)
//
//                        try? moc.save()
                    }.sheet(isPresented: $showSheet, content: {
                        NewCourseView(moc: _moc, showSheet: $showSheet)
                    })
                }
            }
            .navigationTitle("GradeTrack")
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
