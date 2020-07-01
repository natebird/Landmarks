//
//  UserData.swift
//  iOS
//
//  Created by Bird, Nate on 6/30/20.
//

import Foundation
import Combine

final class UserData: ObservableObject {
   @Published var showFavoritesOnly = false
   @Published var landmarks = landmarkData
}
