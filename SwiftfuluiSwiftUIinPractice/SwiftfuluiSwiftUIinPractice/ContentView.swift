//
//  ContentView.swift
//  SwiftfuluiSwiftUIinPractice
//
//  Created by Project2Morrow on 1/12/24.
//

import SwiftUI
import SwiftfulUI

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []

    var body: some View {
        ScrollView {
            VStack {

                ForEach(products) { product in
                    Text(product.title)
                        .foregroundStyle(.spotifyGreen)
                }
            }
            .padding()
            .task {
                await getData()
            }
        }
    }

    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            print("Error fetching data: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ContentView()
}
