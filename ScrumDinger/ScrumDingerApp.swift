//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 15/02/2021.
//

import SwiftUI

@main
struct ScrumDingerApp: App {

	@State private var scrums = DailyScrum.fixtures

    var body: some Scene {
        WindowGroup {
			NavigationView {
				ScrumsView(scrums: $scrums)
			}
        }
    }
}
