//
//  SpotifyCategoryCell.swift
//  SwiftfuluiSwiftUIinPractice
//
//  Created by Project2Morrow on 1/12/24.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title : String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen:.spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack: .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
    }
}
