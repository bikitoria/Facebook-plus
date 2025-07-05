//
//  FriendCell.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-02.
//

import SwiftUI

struct FriendCell: View {
    private var viewModel: FriendsViewModel
    private var index: Int
    init(viewModel: FriendsViewModel, index: Int) {
        self.viewModel = viewModel
        self.index = index
    }
    var body: some View {
        HStack(alignment: .top){
            Image(viewModel.friendRequests[index].profileImage ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("\(viewModel.friendRequests[index].firstName) \(viewModel.friendRequests[index].familyName)")
                    .font(.headline)
                    .fontWeight(.semibold)
                HStack{
                    Button(action: {}, label: {
                        Text("Confirm")
                            .foregroundStyle(.white)
                            .frame(width: 120, height: 32)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                    Button(action: {}, label: {
                        Text("Delete")
                            .foregroundStyle(.black)
                            .frame(width: 120, height: 32)
                            .background(Color(.systemGray5))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
            }
        }
        .padding(.horizontal)
    }
}


#Preview {
    FriendCell(viewModel: FriendsViewModel(), index: 0)
}
