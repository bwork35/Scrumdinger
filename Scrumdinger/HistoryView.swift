//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Bryan Workman on 1/1/21.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
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
} //End of struct

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees)
    }
} //End of extension

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History(attendees: ["Jon", "Darla", "Luis"], lengthInMinutes: 10, transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI..."))
    }
} //End of struct
