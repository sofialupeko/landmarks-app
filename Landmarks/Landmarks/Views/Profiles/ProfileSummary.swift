//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Denis Valshchikov on 13.07.2022.
//

import Foundation
import SwiftUI

struct ProfileSummary: View {
	@EnvironmentObject var modelData: ModelData
	var profile: Profile

	var body: some View {
		ScrollView {
			VStack(alignment: .leading, spacing: 10) {
				Text(profile.username)
					.bold()
					.font(.title)

				Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
				Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
				Text("Goal Date: ") + Text(profile.goalDate, style: .date)

				Divider()

				VStack(alignment: .leading) {
					Text("Completed Badges")
						.font(.headline)

					ScrollView(.horizontal) {
						HStack {
							HikeBadge(name: "First Hike")
							HikeBadge(name: "Earth Day")
								.hueRotation(.degrees(90))
							HikeBadge(name: "Tenth Hike")
								.grayscale(0.5)
								.hueRotation(.degrees(45))
						}
						.padding(.bottom)
					}
				}

				Divider()

				VStack(alignment: .leading) {
					Text("Recent Hikes")
						.font(.headline)

					HikeView(hike: modelData.hikes[0])
				}
			}
		}
	}
}

struct ProfileSummary_Previews: PreviewProvider {
	static var previews: some View {
		ProfileSummary(profile: Profile.default)
			.environmentObject(ModelData())
	}
}
