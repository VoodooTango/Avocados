//
//  ContentView.swift
//  Avocados
//
//  Created by MAC on 12/07/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    //MARK: BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
                
                //MARK: HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//: HSTACK
                }//: SCROLL
                
                //MARK: DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK: FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }//: LOOP
                    }//: HSTACK
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//: SCROLL
                
            
                //MARK: RECIPES CARD
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center, spacing: 20){
                    ForEach(recipes){ item in
                        RecipeCardView(recipe: item)
                    }//: LOOP
                }// : VSTACK
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                
                //MARK: FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were to afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }//: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, recipes: recipesData)
    }
}
