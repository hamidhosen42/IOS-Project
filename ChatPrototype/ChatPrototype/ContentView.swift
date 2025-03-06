//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Project2Morrow on 28/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hamid Hosen")
                .padding()
                .background(Color.yellow,in:RoundedRectangle(cornerRadius: 10))
            
            Text("How are you?")
                .padding()
                .background(Color.teal,in:RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
