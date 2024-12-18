//
//  Product.swift
//  UniTrade
//
//  Created by Santiago Martinez on 1/10/24.
//

import Foundation

struct Product: Identifiable {
    let id: String
    let title: String
    let price: Float
    let rating: Float
    let condition: String
    let description: String
    let reviewCount: Int
    let type: String
    let inStock: Bool?
    let categories: String
    let rentalPeriod: Int?
    let imageUrl: String?
    var isFavorite: Bool = false
    let favorites: Int
    let favoritesCategory: Int
    let favoritesForYou : Int

    init(
        id: String,
        title: String,
        price: Float,
        rating: Float,
        condition: String,
        description: String,
        reviewCount: Int,
        type: String,
        inStock: Bool? = true,
        categories: String,
        rentalPeriod: Int? = nil,
        imageUrl: String? = nil,
        isFavorite: Bool = false,
        favorites: Int = 0,
        favoritesCategory: Int = 0,
        favoritesForYou: Int = 0
    ) {
        self.id = id
        self.title = title
        self.price = price
        self.rating = rating
        self.condition = condition
        self.description = description
        self.reviewCount = reviewCount
        self.type = type
        self.inStock = inStock
        self.categories = categories
        self.rentalPeriod = rentalPeriod
        self.imageUrl = imageUrl
        self.isFavorite = isFavorite
        self.favorites = favorites
        self.favoritesCategory = favoritesCategory
        self.favoritesForYou = favoritesForYou
    }
}

extension Product {

    func value(for sortOption: String) -> Float? {
        switch sortOption {
        case "Price":
            return price
        case "Rating":
            return rating
        default:
            return nil
        }
    }
}
