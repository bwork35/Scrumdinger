//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Bryan Workman on 12/28/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.data)
            }
        }
    }
}
