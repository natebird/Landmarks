//
//  Home.swift
//  iOS
//
//  Created by Bird, Nate on 7/1/20.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]] {
            Dictionary(
                grouping: landmarkData,
                by: { $0.category.rawValue }
            )
        }

    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }

    @State var showingProfile = false

    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())

                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }

            }
            .navigationBarTitle(Text("Featured"))
            .sheet(isPresented: $showingProfile) {
                Text("User Profile")
            }
        }
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
