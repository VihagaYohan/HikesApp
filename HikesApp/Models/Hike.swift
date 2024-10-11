//
//  Hike.swift
//  HikesApp
//
//  Created by Yohan on 2024-10-11.
//

import Foundation

struct Hike: Identifiable{
    let id: UUID = UUID()
    let name: String
    let photo: String
    let miles: Double
}
