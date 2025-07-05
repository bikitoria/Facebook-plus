//
//  MenuView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        NavigationView{
            GeometryReader { proxy in
                ScrollView{
                    VStack(alignment: .leading){
                        MenuHeaderView()
                        ShortCutsView(width: proxy.size.width)
                        
                    }
                }
                .background(Color(.systemGray6))
                .scrollIndicators(.hidden)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Text("Menu")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        HStack(spacing: 24){
                            Image(systemName: "gearshape.fill")
                            Image(systemName: "magnifyingglass")
                            
                        }
                        .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}



