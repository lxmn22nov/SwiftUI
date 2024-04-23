//
//  SpotifyHomeView.swift
//  SpotifyUI
//
//  Created by Laxman Singh Koranga on 14/04/2024.
//

import SwiftUI
import SwiftfulUI

struct SpotifyHomeView: View {
    
    @State private var currentUser: User? = nil
    @State private var selectedCategory: Category? = nil
    @State private var products: [Product] = []
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 3, pinnedViews: [.sectionHeaders], content: {
                    Section {
                        VStack {
                            recentSection
                        }
                        .padding(.horizontal, 15)
                        
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 200, height: 200)
                        }
                    } header: {
                        header
                    }
                })
                .padding(.top, 9)
            }
            .scrollIndicators(.hidden)
            .clipped()
        }
        .task {
            await getData()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    private func getData() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().first
            products = try await Array(DatabaseHelper().getProducts().prefix(8))
        } catch {
            
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
        
                        }
                }
            }
            .frame(width: 35, height: 35)
            
            ScrollView(.horizontal) {
                HStack(spacing: 9) {
                    ForEach(Category.allCases, id: \.self) { category in
                        SpotifyCategoryCell(title: category.rawValue.capitalized, isSelected: category == selectedCategory)
                            .onTapGesture {
                                selectedCategory = category
                            }
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
        }
        .padding(.vertical, 24)
        .padding(.leading, 9)
    }
    
    private var recentSection: some View {
        NonLazyVGrid(columns: 2, alignment: .center, spacing: 9, items: products) { product in
            if let product {
                SpotifyRecentCell(
                    imageName: product.firstImage,
                    title: product.title
                )
            }
        }
    }
}

#Preview {
    SpotifyHomeView()
}
