//
//  ContentView.swift
//  TaskFlow2.0
//
//  Created by Joseph DeWeese on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
     ItemsListView()
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
