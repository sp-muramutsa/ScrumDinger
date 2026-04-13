//
//  Attendee.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 3/30/26.
//
import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
