//
//  Note.swift
//  TaskFlow2.0
//
//  Created by Joseph DeWeese on 1/26/25.
//

import Foundation
import SwiftData

@Model
class Note {
    var creationDate: Date = Date.now
    var text: String = ""
    var page: String? = ""
    
    init(text: String, page: String? = nil) {
        self.text = text
        self.page = page
    }
    
    var item: Item?
}
