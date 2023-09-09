//
//  NewCourseView.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-29.
//

import SwiftUI

struct NewCourseView: View {
    @Environment(\.managedObjectContext) var moc
    @Binding var showSheet: Bool
    
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Course Name", text: $name)
            }
            .navigationTitle("New Course")
            .toolbar {
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add Course") {
                        
                        _ = Course(name: name, context: moc)
                        
                        try? moc.save()
                        
                        showSheet = false
                    }
                }
                
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.up")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.down")
                    }
                }
            }
        }
    }
}

//struct NewCourseView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewCourseView()
//    }
//}
