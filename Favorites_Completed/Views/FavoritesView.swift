//
// FavoritesView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.


import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack {
                    ForEach(favorites.cities) { city in
                        if city.isFavorite == true {
                            CityCardView(city: city)
                        }
                    }
                    ForEach(favorites.hobbies) { hobby in
                        if hobby.isFavorite == true {
                            HobbyRowView(hobby: hobby)
                        }
                    }
                    ForEach(favorites.books) { book in
                        if book.isFavorite == true {
                            BookRowView(book: book)
                        }
                    }
                }
                .navigationTitle("Favorites")
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
