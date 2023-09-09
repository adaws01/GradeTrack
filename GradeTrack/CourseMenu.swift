//
//  CourseMenu.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-21.
//

//https://www.hackingwithswift.com/forums/swiftui/how-to-properly-pass-a-core-data-element-from-a-view-to-a-sub-view-how-to-reload-sub-view-upon-dismiss-without-returning-to-parent-view/18453 This seems to be the solution to my data passing issues

import SwiftUI

struct CourseMenu: View {
    @Environment(\.managedObjectContext) var moc
    @ObservedObject var course: FetchedResults<Course>.Element
    @State var showSheet: Bool = false
    
    var body: some View {
            Form {
                Text(String(course.grade?.calculateAttemptedPercentage() ?? 0) + "% Thus far")
                Text(String(course.grade?.calculateTotalPercentage() ?? 0) + "% Overall")
                Section {
                    Button("Syllabus") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/  //TODO: Learn PDFKit.
                    }
                }
                
                Section(header: Text("Grade Breakdown")) {
                    
                    let courseBreakdown = course.breakdown
                    let courseComponents = course.breakdown?.components
                    
                    if (courseBreakdown == nil) || ((courseComponents?.isEmpty) != nil) {
                        Text("This course does not yet have a breakdown.")
                    } else {
                        ForEach(courseComponents!) { component in
                            
                            let phrase1 = (component.name ?? "Unnamed Course Component") + " "
                            let phrase2 = String(component.pointValue) + "%"
                            Text(phrase1 + phrase2)
                        }
                    }
                    Button("Modify Course Grade Breakdown") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                
                Section(header: Text("Upcoming Assignments")) {
                    
                    if (((course.assignments?.isEmpty) != nil) || (course.assignments) == nil) {
                        Text("This course has no assignments.")
                    } else {
                        ForEach(course.assignments!) { assignment in
                            NavigationLink(destination: MainMenu()) {  //TODO: Change destination
                                Text(assignment.name ?? "Unnamed Assignment")
                                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                        Button {
                                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                        } label: {
                                            Label("", systemImage: "rectangle.and.pencil.and.ellipsis")
                                        }.tint(Color.blue)
                                    }
                                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                        Button {
                                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                        } label: {
                                            Label("", systemImage: "checkmark.circle.fill")
                                        }
                                        .tint(Color.green)
                                    }
                            }
                        }
                    }
                    Button("Add Assignment") {
                        showSheet.toggle()
                    }.sheet(isPresented: $showSheet, content: {
                        NewAssignmentView()
                    })
                }
                
                
                Section(header: Text("Completed Assignments Sample GUI")) {
                    Text("Project     |              May 20            |      20 / 20%")
                }
                Section(header: Text("Upcoming Assignments Sample GUI")) {
                    Label("Label", systemImage: "42.circle")
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            } label: {
                                Label("", systemImage: "rectangle.and.pencil.and.ellipsis")
                            }.tint(Color.blue)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            } label: {
                                Label("", systemImage: "checkmark.circle.fill")
                            }
                            .tint(Color.green)
                        }
                    
                    Text("Final         |          May 20           |        / 30%")
                    Button("Add Assignment") {
                        showSheet.toggle()
                    }.sheet(isPresented: $showSheet, content: {
                        NewAssignmentView()
                    })
                }
                Section(header: Text("Completed Assignments Sample GUI")) {
                    Text("Project     |              May 20            |      20 / 20%")
                }
            }
            .navigationTitle(Text(course.name ?? "Unnamed Course"))
    }
}

//struct CourseMenu_Previews: PreviewProvider {
//static var previews: some View {
//        CourseMenu()
//    }
//}
