//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 31/07/2024.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    
    var body: some View {
        VStack {
            Text("task title:")
                .font(.title)
                .fontWeight(.light)
            
            
            TextField("enter the task description here...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("is it important?")
                    .font(.title3)
                    .fontWeight(.light)
            } // toggle
            .padding()
            .padding(.bottom, 15.0)
            
            Button {
                
            } label: {
                Text("save")
            }
            
        } // v stack
        .padding()
    } // body
} // struct

//#Preview {
   // NewToDoView()
//}
