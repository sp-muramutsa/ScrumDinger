//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 2/4/26.
//

import SwiftUI
import SwiftData

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
