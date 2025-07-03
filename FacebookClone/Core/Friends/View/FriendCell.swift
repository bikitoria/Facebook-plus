//
//  FriendCell.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-02.
//

import SwiftUI

struct FriendCell: View {
    var body: some View {
        HStack(alignment: .top){
            Image("lindaProfilePic")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("Linda Belcher")
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
    FriendCell()
}
