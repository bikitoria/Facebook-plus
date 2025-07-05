//
//  Post.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//


import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let userId: String
    var postTitle: String
    var postLikes: Int
    var postShares: Int
    var postUrl: String
    var isVideo: Bool
    // let timestamp: timestamp //fire base
    var user: User? //prod app dont use this use the user ID
    
}
