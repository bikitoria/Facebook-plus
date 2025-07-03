//
//  TagView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-02.
//

import SwiftUI

struct tagView: View {
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .font(.subheadline)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}


