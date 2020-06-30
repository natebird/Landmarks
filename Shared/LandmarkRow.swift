//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Bird, Nate on 6/29/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            LandmarkRow(landmark: landmarkData[item])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}

