//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct DailyScrum {
	var title: String
	var attendees: [String]
	var lengthInMinutes: Int
	var color: Color
}

extension DailyScrum {
	static var fixture: [DailyScrum] {
		[
			DailyScrum(title: "Design Hangout", attendees: ["Jessica", "Abdou", "Anna"],
					   lengthInMinutes: 10, color: Color("Design")),
			DailyScrum(title: "Product Management", attendees: ["Michelle", "Gon", "Gabrielle"],
					   lengthInMinutes: 5, color: Color("Product Management")),
			DailyScrum(title: "Engineering", attendees: ["Daily", "Karine", "Sandrine", "Flo"],
					   lengthInMinutes: 15, color: Color("Engineering"))
		]
	}
}
