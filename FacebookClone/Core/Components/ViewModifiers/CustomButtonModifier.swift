//
//  CustomButtonModifier.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI
struct CustomButtonModifier: ViewModifier {
    
    var width: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fontWeight(.semibold)
            .frame(width: width - 30, height: 44)
            .background(Color(.systemGray4))
            .clipShape(RoundedRectangle(cornerRadius: 9))
            .foregroundStyle(.black)
            .padding(.vertical)
    }
}


extension View{
    func customButtonModifier(width: CGFloat) -> some View {
        modifier(CustomButtonModifier(width: width))
    }
}
