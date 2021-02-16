//
//  CardView.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct CardView: View {
	let scrum: DailyScrum

	var body: some View {
		VStack(alignment: .leading) {
			Text(scrum.title)
				.font(.headline)

			Spacer()

			HStack {
				Label("\(scrum.attendees.count)", systemImage: "person.3")
					.accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
					.accessibilityLabel(Text("Attendees"))
					.accessibilityValue(Text("\(scrum.attendees.count)"))

				Spacer()

				Label("\(scrum.lengthInMinutes)", systemImage: "clock")
					.padding(.trailing, 20)
					.accessibilityElement(children: .ignore)
					.accessibilityLabel(Text("Meeting Length"))
					.accessibilityValue(Text("\(scrum.lengthInMinutes) minutes"))
			}.font(.caption)
		}
		.padding()
		.foregroundColor(scrum.color.accessibleFontColor)
	}
}

struct CardView_Previews: PreviewProvider {
	static var scrum = DailyScrum.fixture[0]
	static var previews: some View {
		CardView(scrum: scrum)
			.background(Color.random)
			.previewLayout(.fixed(width: 400, height: 400))
	}
}
