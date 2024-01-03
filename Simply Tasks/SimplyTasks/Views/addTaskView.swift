//
//  AddTaskView.swift
//  Simply Tasks
//
//  Created by Pattrick on 27/12/2566 BE.
//

import SwiftUI

struct addTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(
                "Enter your task here",
                text: $title
            )
                .textFieldStyle(.roundedBorder)

            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding(13)
                    .padding(.horizontal)
                    .background(Color(hue: 0.56, saturation: 0.312, brightness: 0.793))
                    .cornerRadius(70)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.56, saturation: 0.139, brightness: 0.894))
    }
}

struct addTaskView_Previews: PreviewProvider {
    static var previews: some View {
        addTaskView()
            .environmentObject(RealmManager())
    }
}

