//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Scholar on 31/07/2024.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
