//
//  ScrumsView.swift
//  ScrumDinger
//
//  Created by Tim Jarratt on 16/02/2021.
//

import SwiftUI

struct ScrumsView: View {
	@Binding var scrums: [DailyScrum]

    var body: some View {
		List {
			ForEach(scrums) { scrum in
				NavigationLink(destination: DetailView(scrum: binding(for: scrum))) {
					CardView(scrum: scrum)
				}
				.listRowBackground(scrum.color)
			}
		}
		.navigationTitle("Daily Scrums")
		.navigationBarItems(trailing: Button(action: {}) {
			Image(systemName: "plus")
		})
    }

	private func binding(for scrum: DailyScrum) -> Binding<DailyScrum> {
		guard let index  = scrums.firstIndex(where: {$0.id == scrum.id}) else {
			fatalError("Cannot find scrum in array")
		}

		return $scrums[index]
	}
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ScrumsView(scrums: .constant(DailyScrum.fixtures))
		}
    }
}
