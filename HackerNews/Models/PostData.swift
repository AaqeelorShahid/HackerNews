//
//  PostData.swift
//  HackerNews
//
//  Created by Shahid Aaqeel on 12/13/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let objectID: String
    let url: String?
}
