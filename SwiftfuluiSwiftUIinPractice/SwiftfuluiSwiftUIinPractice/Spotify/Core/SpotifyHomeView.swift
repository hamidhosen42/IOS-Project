//
//  SpotifyHomeView.swift
//  SwiftfuluiSwiftUIinPractice
//
//  Created by Project2Morrow on 1/12/24.
//

import SwiftUI

struct SpotifyHomeView: View {
    @State private var currentUser: User? = nil
    @State private var selectedCategory: MediaCategory? = nil

    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical){
                LazyVStack(spacing:1,pinnedViews: [.sectionHeaders], content: {
                    Section{
                        ForEach(0..<20){_ in
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 200,height: 200)
                        }
                    }header: {
                        header
                    }
                }).padding(.top,8)
            }
            .scrollIndicators(.hidden)
            .clipped()
        }
        .task {
            await getData()
        }.toolbar(.hidden, for: .navigationBar)
    }

    private func getData() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().first
        } catch {
            // Handle error here
            print("Failed to fetch data: \(error.localizedDescription)")
        }
    }

    private var header: some View {
        HStack(spacing: 0) {
            ZStack {
                if let currentUser {
                    ImageLoaderView(urlString: currentUser.image)
                        .background(.spotifyWhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            // Handle tap action here
                        }
                }
            }
            .frame(width: 35, height: 35)

            ScrollView(.horizontal) {
                HStack {
                    ForEach(MediaCategory.allCases, id: \.self) { category in
                        SpotifyCategoryCell(
                            title: category.rawValue.capitalized,
                            isSelected: category == selectedCategory
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
        }
        .padding(.vertical,24)
        .padding(.leading,8)
        .background(Color.spotifyBlack)
    }
}

#Preview {
    SpotifyHomeView()
}
