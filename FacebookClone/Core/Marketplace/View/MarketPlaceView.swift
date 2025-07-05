//
//  MarketPlaceView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-03.
//

import SwiftUI

struct MarketPlaceView: View {
    @StateObject private var viewModel = MarketPlaceViewModel()
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1)
    ]
    var body: some View {
        NavigationStack{
            GeometryReader { proxy in
                ScrollView{
                    HStack{
                        MarketPlaceButton(title: "Sell", imageName: "square.and.pencil", width: proxy.size.width)
                        MarketPlaceButton(title: "Categories", imageName: "list.bullet", width: proxy.size.width)
                        

                    }
                    .padding()
                    Divider()
                    VStack(alignment: .leading){
                        HStack(spacing: 2){
                            Text("Today's picks")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Spacer()
                            Image("pin")
                                .resizable()
                                .frame(width: 20, height: 16)
                            Text("London")
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                        }
                        .padding()
                        LazyVGrid(columns: gridItems, spacing: 1){
                            ForEach(viewModel.items){ item in
                                VStack{
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: (proxy.size.width / 2) - 3, height:(proxy.size.width / 2) - 3)
                                        .clipped()
                                    Text("\(item.item_price)$ - \(item.item_name)")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.vertical)
                                }
                            }
                        }
                    }
                    
                }
                .scrollIndicators(.hidden)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Text("MarketPlace")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        HStack(spacing: 24){
                            Image(systemName: "person.fill")
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
    MarketPlaceView()
}

struct MarketPlaceButton: View {
    private let title: String
    private let imageName: String
    private let width: CGFloat
    
    init(title: String, imageName: String, width: CGFloat) {
        self.title = title
        self.imageName = imageName
        self.width = width
    }
    var body: some View {
        HStack{
            Image(systemName: imageName)
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
        }
        .frame(width: width * 0.45, height: 44)
        .background(Color(.systemGray5))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
