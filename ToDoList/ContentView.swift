//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 31/07/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack{
                Text("to do list !!")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .font(.system(size: 40))
                Spacer()
                
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                }
                
            } // h stack
            .padding()
            
            Spacer()
            
            List {
                ForEach(toDos) { toDoItem in Text(toDoItem.title)
                    
                }
            }
            
        } // v stack
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
        }
        
    } // body
} // struct

#Preview {
    ContentView()
}
