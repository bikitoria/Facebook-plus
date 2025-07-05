//
//  MenuView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct MenuView: View {
    @State private var showLogoutAlert: Bool = false
    
    var body: some View {
        NavigationView{
            GeometryReader { proxy in
                ScrollView{
                    VStack(alignment: .leading){
                        MenuHeaderView()
                        ShortCutsView(width: proxy.size.width)
                        MenuCell(title: "Help & Support", imageName: "questionmark.circle.fill")
                        MenuCell(title: "Settings & Privacy", imageName: "gearshape.fill")
                        MenuCell(title: "Also from meta", imageName: "window.casement.closed")
                        Button{
                            showLogoutAlert.toggle()
                        }label: {
                            Text("Log Out")
                                .customButtonModifier(width: proxy.size.width)
                                .padding()
                        }
                        
                    }
                }
                .alert("Logout of your account?", isPresented: $showLogoutAlert){
                    Button("Logout") {}
                    Button("Cancel", role: .cancel) {}
                }
                .background(Color(.systemGray5))
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




