//
//  GradeTrackApp.swift
//  GradeTrack
//
//  Created by Alexander Dawson on 2023-06-21.
//

import SwiftUI

@main
struct GradeTrackApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            MainMenu()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
