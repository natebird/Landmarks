//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Bird, Nate on 6/30/20.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false

    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                if !self.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
