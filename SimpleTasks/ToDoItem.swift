//
//  ToDoItem.swift
//  SimpleTasks
//
//  Created by Johnny Hacking on 5/4/22.
//

import SwiftUI

struct ToDoItem: Identifiable, Hashable, Codable{
    enum Priority: String, Codable, CaseIterable{
        case low    = "low"
        case medium = "medium"
        case high   = "high"
    }
    
    var id = UUID().uuidString
    var title = "New Item"
    var priority = Priority.medium
    var isComplete = false
    
    var icon: String{
        if isComplete{
            return "checkmark.square.fill"
        } else {
            switch priority {
            case .low:
                return "square"
            case .medium:
                return "flag.square"
            default:
                return "exclamationmark.square"
            }
        }
    }
}
