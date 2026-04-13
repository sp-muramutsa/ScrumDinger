//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by sandrine Bakuramutsa on 4/12/26.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}

#Preview {
    let history = History(attendees: [
        Attendee(name: "George"),
        Attendee(name: "Barnett"),
        Attendee(name: "Jon"),
        Attendee(name: "Snow")
    ],
    transcript: "Winter is coming... and so will I!")
    HistoryView(history: history)
}
