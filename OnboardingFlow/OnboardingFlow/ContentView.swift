//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Project2Morrow on 28/2/25.
//

import SwiftUI

let gradientColors:[Color]=[
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
}
