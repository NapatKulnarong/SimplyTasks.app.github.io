//
//  TaskRow.swift
//  Simply Tasks
//
//  Created by Pattrick on 27/12/2566 BE.
//

import SwiftUI

struct taskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
            
            Text(task)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        taskRow(task: "Do laundry", completed: true)
    }
}
