//
//  FeedView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct FeedView: View {
    private var facebookBlue = Color(red: 26/255, green: 103/255, blue: 178/255)
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                Spacer()    // puts header at the top
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("facebook")
                        .font(.system(size: 32, weight:.bold))
                        .foregroundStyle(facebookBlue)
                }
                ToolbarItem(placement: .topBarTrailing)
                {
                    HStack(spacing: 24){
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                            .font(.system(size: 18, weight: .bold))
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

