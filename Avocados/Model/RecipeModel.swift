//
//  RecipeModel.swift
//  Avocados
//
//  Created by MAC on 17/07/22.
//

import SwiftUI
//MARK: RECIPE MODEL

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
