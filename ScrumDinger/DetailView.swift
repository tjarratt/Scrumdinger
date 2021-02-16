//
//  DetailView.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct DetailView: View {
	let scrum: DailyScrum

    var body: some View {
		List {
			Section(header: Text("Meeting Info")) {
				NavigationLink(destination: MeetingView()) {
					Label("Start Meeting", systemImage: "timer")
						.font(.headline)
						.foregroundColor(.accentColor)
						.accessibilityLabel("Start meeting")
				}

				HStack {
					Label("Length", systemImage: "clock")
						.accessibilityLabel("Meeting length")
					Spacer()
					Text("\(scrum.lengthInMinutes) minutes")
				}

				HStack {
					Label("Color", systemImage: "paintpalette")
					Spacer()
					Image(systemName: "checkmark.circle.fill")
						.foregroundColor(scrum.color)
				}.accessibilityElement(children: .ignore)
			}

			Section(header: Text("Attendees")) {
				ForEach(scrum.attendees, id: \.self) { attendee in
					Label(attendee, systemImage: "person")
						.accessibilityLabel(Text("Person"))
						.accessibilityValue(Text(attendee))
				}
			}
		}
		.listStyle(InsetGroupedListStyle())
		.navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			DetailView(scrum: DailyScrum.fixtures[0])
		}
    }
}
