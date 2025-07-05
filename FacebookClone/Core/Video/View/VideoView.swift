//
//  VideoView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VideoOptionView()
                ForEach(0 ..< 3){ _ in
                    PostView(isVideo: true)
                }
                
            }
            .scrollIndicators(.hidden)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Text("Video")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .topBarLeading){
                    HStack(spacing: 16){
                        Image(systemName: "person.fill")
                        Image("magnifyingglass")
                    }
                    .fontWeight(.bold)
                }
                
            }
        }
            
    }
}

#Preview {
    VideoView()
}

