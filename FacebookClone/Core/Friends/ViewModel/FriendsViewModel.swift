//
//  FriendsViewModel.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import Foundation

class FriendsViewModel: ObservableObject {
    @Published var users: [User] = [
        .init(id: "0", firstName: "Louise", familyName: "Belcher", email: "louise.belcher@gmail.com",profileImage: "profilePic", age: 9, gender: "female", friendsIds: ["2"], friendRequestsIds: ["1", "2", "4"],isCurrentUser: true),
        .init(id: "1", firstName: "Tina", familyName: "Belcher", email: "tina.belcher@gmail.com",profileImage: "timeProfilePic", age: 15, gender: "female", friendsIds: [], friendRequestsIds: [], isCurrentUser: false),
        .init(id: "2", firstName: "Linda", familyName: "Belcher", email: "linda.belcher@gmail.com", profileImage: "lindaProfilePic", age: 45, gender: "female", friendsIds: [], friendRequestsIds: [], isCurrentUser: false),
        .init(id: "3", firstName: "Bob", familyName: "Belcher", email: "bob.belcher@gmail.com", profileImage: "bobProfilePic", age: 47, gender: "male", friendsIds: ["0"], friendRequestsIds: [], isCurrentUser: false),
        .init(id: "4", firstName: "Gene", familyName: "Belcher", email: "gene.belcher@gmail.com", profileImage: "geneProfilePic", age: 11, gender: "male", friendsIds: [], friendRequestsIds: [], isCurrentUser: true)
        
    ]
    
    @Published var friendRequests: [User] = []
    
    init() {
        setupFriendRequests()
    }
    
    private func setupFriendRequests() {
        self.friendRequests = self.users.filter{ self.users[0].friendRequestsIds.contains($0.id)}
    }
}
