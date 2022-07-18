//
//  RecipeCardView.swift
//  Avocados
//
//  Created by MAC on 17/07/22.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: PROPERTIES
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = true
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // CARD IMAGE
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTeansparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 22)
                            .padding(.top, 22)
                            Spacer()
                        }//: VSTACK
                    }//: HSTACK
                )
            VStack(alignment: .leading, spacing: 12){
                
                // TITLE
                
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // RATES
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
                
               
                
            }//: VSTACK
            .padding()
            .padding(.bottom, 12)
            
        }//: VSTACK
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTeansparentLight"), radius: 8, x: 0, y: 0)
        
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModel = true
        }
        .sheet(isPresented: $showModel) {
            RecipeDetailView(recipe: recipe)
        }
    }
}
   //MARK: PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
