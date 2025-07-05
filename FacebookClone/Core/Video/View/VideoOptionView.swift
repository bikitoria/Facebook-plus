//
//  VideoOptionView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct VideoOptionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing:24){
            ScrollView(.horizontal){
                HStack(spacing: 24){
                    Text("For you")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .padding(.vertical, 7)
                        .background(Color(.systemGray5))
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    Text("Live")
                        .videoIptionViewModifier()
                    Text("Game")
                        .videoIptionViewModifier()
                    Text("Reels")
                        .videoIptionViewModifier()
                    Text("Following")
                        .videoIptionViewModifier()
                }
            }
            .padding(.leading)
            Divider()
        }
        .padding(.vertical)
    }
}


#Preview {
    VideoOptionView()
}
