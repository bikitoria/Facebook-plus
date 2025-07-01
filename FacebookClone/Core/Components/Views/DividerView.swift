//
//  DividerView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct DividerView: View {
    private var width: CGFloat
    init(width: CGFloat) {
        self.width = width
    }
    var body: some View {
        Rectangle()
            .foregroundStyle(Color(.systemGray4))
            .frame(width: width, height: 6)
    }
}
