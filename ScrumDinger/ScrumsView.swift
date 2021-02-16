//
//  ScrumsView.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct ScrumsView: View {
	let scrums: [DailyScrum]

    var body: some View {
		List {
			ForEach(scrums) { scrum in
				CardView(scrum: scrum)
					.listRowBackground(scrum.color)
			}
		}
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
		ScrumsView(scrums: DailyScrum.fixtures)
    }
}
