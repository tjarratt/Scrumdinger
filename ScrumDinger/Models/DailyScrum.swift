//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct DailyScrum: Identifiable {
	let id: UUID
	var title: String
	var attendees: [String]
	var lengthInMinutes: Int
	var color: Color

	init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
		self.id = id
		self.title = title
		self.attendees = attendees
		self.lengthInMinutes = lengthInMinutes
		self.color = color
	}
}

extension DailyScrum {
	struct Data {
		var title = ""
		var attendees: [String] = []
		var lengthInMinutes: Double = 0.0
		var color = Color.random
	}

	var data: Data {
		return Data(title: title,
					attendees: attendees,
					lengthInMinutes: Double(lengthInMinutes),
					color: color)
	}
}

extension DailyScrum {
	static var fixtures: [DailyScrum] {
		[
			DailyScrum(title: "Design Hangout",
					   attendees: ["Jessica", "Abdou", "Anna"],
					   lengthInMinutes: 10,
					   color: Color("Design")),
			DailyScrum(title: "Product Management",
					   attendees: ["Michelle", "Gon", "Gabrielle"],
					   lengthInMinutes: 5,
					   color: Color("Product Management")),
			DailyScrum(title: "Engineering",
					   attendees: ["Daily", "Karine", "Sandrine", "Flo"],
					   lengthInMinutes: 15,
					   color: Color("Engineering"))
		]
	}
}
