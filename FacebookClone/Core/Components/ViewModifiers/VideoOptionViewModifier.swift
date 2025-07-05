//
//  VideoOptionViewModifier.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-04.
//

import SwiftUI

struct VideoOptionViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.darkGray))
    }
}

extension View{
    func videoIptionViewModifier() -> some View{
        modifier(VideoOptionViewModifier()) //return is implicit
    }
}
