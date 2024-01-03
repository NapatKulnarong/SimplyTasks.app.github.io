//
//  ContentView.swift
//  Simply Tasks
//
//  Created by Pattrick on 27/12/2566 BE.
//

import SwiftUI

struct viewContent: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            viewTask()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            addTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.557, saturation: 0.139, brightness: 0.894))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        viewContent()
    }
}
