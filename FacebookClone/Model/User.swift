//
//  User.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    
    let id: String
    var firstName: String
    var familyName: String
    var email: String
    var profileImage: String?
    var coverImage: String?
    var age: Int
    var gender: String
    var friendsIds: [String]
    var friendRequestsIds: [String]
    var isCurrentUser: Bool = false
}
