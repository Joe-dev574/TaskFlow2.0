//
//  Category.swift
//  TaskFlow2.0
//
//  Created by Joseph DeWeese on 1/26/25.
//

import SwiftUI

enum Category: String, CaseIterable {
        case Today = "Today"
        case Upcoming = "Upcoming"
        case Done = "Done"
        case All = "All"
   
    var color: Color {
        switch self {
        case .Today: .blue
        case .Upcoming: .orange
        case .Done: .green
        case .All: .gray
       
        }
    }
    
    var symbolImage: String {
        switch self {
        case .Today: "calendar"
        case .Upcoming: "calendar.badge.clock"
        case .Done: "calendar.badge.checkmark"
        case .All: "list.bullet.rectangle.portrait"
        }
    }
}

