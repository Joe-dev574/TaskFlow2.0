//
//  Item.swift
//  TaskFlow2.0
//
//  Created by Joseph DeWeese on 1/26/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
