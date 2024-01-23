//
//  Landmark.swift
//  Landmarks
//
//  Created by Nattapon Howong on 23/1/2567 BE.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description : String
}
