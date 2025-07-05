//
//  ShortCutsView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct ShortCutsView: View {
    private var gridItems: [GridItem] = [
        .init(.flexible(), spacing: 15),
        .init(.flexible(), spacing: 15)
    ]
    
    private var shortcutsArray: [(String, String)] = [
        ("Memories","gobackward"),
        ("Saved","bookmark.fill"),
        ("Groups","person.2.circle"),
        ("Video","play.tv.fill"),
        ("Marketplace","storefont.fill"),
        ("Friends","person.2.fill"),
        ("Feeds","calendar.badge,clock"),
        ("Events","calendar")
    ]
    
    private var width: CGFloat
    
    init( width: CGFloat) {
        self.width = width
    }
    var body: some View {
        VStack(alignment: .leading){
            Text("Your shortcuts")
                .font(.headline)
                .foregroundStyle(Color(.darkGray))
            
            LazyVGrid(columns: gridItems, spacing: 15){
                ForEach(0 ..< 8){ index in
                    VStack(alignment: .leading){
                        Image(systemName: shortcutsArray[index].1)
                            .foregroundStyle(.blue)
                        Text(shortcutsArray[index].0)
                            .font(.headline)
                        HStack{Spacer()}
                    }
                    .padding(.horizontal)
                    .frame(width: width * 0.45, height: 80)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            
            Button(action: {}, label: {
                Text("See more")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: width - 30, height: 44)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 9))
                    .foregroundStyle(.black)
                    .padding(.vertical)
            })
        }
        .padding(.horizontal)
    }
}



