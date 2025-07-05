//
//  FriendsView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-02.
//

import SwiftUI

struct FriendsView: View {
    @StateObject private var viewModel = FriendsViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 25){
                    HStack{
                        tagView(title: "suggestions")
                        tagView(title: "Your friends")
                        Spacer()
                    }
                    .padding(.horizontal)
                    Divider()
                    HStack{
                        Text("Friends requests")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("\(viewModel.friendRequests.count)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.red)
                        Spacer()
                        Button(action: {}, label: {
                            Text("See All")
                        })
                    }
                    .padding(.horizontal)
                    ForEach(0 ..< viewModel.friendRequests.count) { index in
                        FriendCell(viewModel: viewModel, index: index)
                    }
                    Spacer()
                }
                .padding(.vertical)
            }
            .scrollIndicators(.hidden)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                Text("Friends")
                    .font(.title)
                    .fontWeight(.bold)
            }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    FriendsView()
}


