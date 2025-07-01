//
//  StoryCardView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct StoryCardView: View {
    var body: some View {
        Image("dubai_2024")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 170)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay{
                VStack(alignment: .leading){
                    Image("pam")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.blue, lineWidth: 3)
                        }
                    Spacer()
                    Text("Pam")
                        .foregroundStyle(.white)
                        .font(.system(size:12, weight: .semibold))
                    HStack { Spacer()
                    }
                }
                .padding(.leading, 8)
                .padding(.vertical, 8)
            }
    }
}

#Preview {
    StoryCardView()
}
