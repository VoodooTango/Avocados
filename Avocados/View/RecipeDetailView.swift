//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by MAC on 17/07/22.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: PROPERTIES
    var recipe: Recipe
    
    @State private var isAnimating: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
            // IMAGE
            Image(recipe.image)
                .resizable()
            .scaledToFit()
            
            Group{
                // TITLE
                Text(recipe.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(.top, 10)
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
                
                // INGREDIENTES
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading, spacing: 5){
                    ForEach(recipe.ingredients, id: \.self){ item in
                        VStack(alignment: .leading, spacing: 5){
                            Text(item)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Divider()
                        }//: VSTACK
                    }//: LOOP
                }//:VSTACK
                
                // INSTRUCTIONS
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ForEach(recipe.instructions, id: \.self){item in
                    VStack(alignment: .center, spacing: 5) {
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .frame(width: 42, height: 42, alignment: .center)
                            .imageScale(.large)
                            .font(Font.title.weight(.ultraLight))
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        
                        Text(item)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .font(.system(.body, design: .serif))
                            .frame(minHeight: 100)
                    }
                }
                
            }//: GROUP
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
        }//: VSTACK
       }//: SCROLL
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }
                           , label: {
                               Image(systemName: "chevron.down.circle.fill")
                                   .font(.title)
                                   .foregroundColor(Color.white)
                                   .shadow(radius: 4)
                                   .opacity(isAnimating ? 1 : 0.6)
                                   .scaleEffect(isAnimating ? 1.2 : 0.8, anchor: .center)
                                   .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })//: BUTTON
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }// VSTACK
            }//: HSTACK
        )
        .onAppear() {
            self.isAnimating.toggle()
        }
    }
    
    struct TitleModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.system(.title, design: .serif))
                .foregroundColor(Color("ColorGreenAdaptive"))
                .padding(8)
        }
    }
}
   //MARK: PREVIEW

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
