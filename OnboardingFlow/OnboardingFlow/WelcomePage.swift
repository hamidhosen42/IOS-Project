//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Project2Morrow on 28/2/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150,height: 150)
                .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            
            Text("Welcome to MyApp")
                .padding(.top)
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Description")
                .font(.title2)
        }
        .padding()
    }
}
