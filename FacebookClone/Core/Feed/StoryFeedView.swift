//
//  StoryFeedView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct StoryFeedView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                MyStoryCardView()
                ForEach( 0 ..< 3){ _ in
                    StoryCardView()
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(.vertical, 5)
    }
}

#Preview {
    StoryFeedView()
}
