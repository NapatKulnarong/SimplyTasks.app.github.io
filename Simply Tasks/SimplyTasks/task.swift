//
//  Task.swift
//  Simply Tasks
//
//  Created by Pattrick on 27/12/2566 BE.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId 
    @Persisted var title = ""
    @Persisted var completed = false
}
