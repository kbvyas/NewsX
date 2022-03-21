//
//  PostData.swift
//  NewsX
//
//  Created by Kritarth Vyas on 3/10/22.
//  Credits: London App Brewery iOS Bootcamp
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
