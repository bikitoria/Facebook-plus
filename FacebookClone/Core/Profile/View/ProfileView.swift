//
//  ProfileView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView{
                VStack{
                    ProfileHeaderView(width: proxy.size.width)
                    DividerView(width: proxy.size.width)
                    ProfileOptionsView()
                    ProfileFriendsView(width: proxy.size.width)
                    DividerView(width: proxy.size.width)
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle(Text("Louise Belcher"))
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {dismiss()
                    }, label:{
                        Image(systemName: "arrow.left")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                    })
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {}, label:{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                    })
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}




