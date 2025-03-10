//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Project2Morrow on 28/2/25.
//

import SwiftUI

struct FeaturesPage:View {
    var body: some View {
        VStack(spacing:30){
            Text("Features")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top,100)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight:.infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
