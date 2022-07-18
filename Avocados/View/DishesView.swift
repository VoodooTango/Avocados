//
//  DishesView.swift
//  Avocados
//
//  Created by MAC on 16/07/22.
//

import SwiftUI

struct DishesView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack(alignment: .leading, spacing: 4) {
                // -1. Collum
                HStack{
                  Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                  Text("Toasts")
                }
                Divider()
                
                HStack{
                  Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                  Text("Tacos")
                }
                Divider()
                
                HStack{
                  Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                  Text("Salads")
                }
                Divider()
                
                HStack{
                  Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                  Text("Spreds")
                }
            }//: VSTACK
            
            // - 2.Collum
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName:"heart.circle")
                    .font(Font.title.weight(.heavy))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }//: VSTACK
            
            // - 3. Collum
            VStack(alignment: .trailing, spacing: 4) {
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }//:HSTACK
                    Divider()
                
                    HStack{
                        Text("Sandwich")
                        Spacer()
                        Image("icon-sandwiches")
                            .resizable()
                            .modifier(IconModifier())
                    }//: HSTACK
                    Divider()
                
                    HStack{
                        Text("Soup")
                        Spacer()
                        Image("icon-soup")
                            .resizable()
                            .modifier(IconModifier())
                    }//: HSTACK
                   Divider()
                
                    HStack{
                        Text("Smoothie")
                        Spacer()
                        Image("icon-smoothies")
                            .resizable()
                            .modifier(IconModifier())
                    }//: HSTACK
            }//: VSTACK
        }//: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }

    struct IconModifier: ViewModifier{
        func body(content: Content) -> some View {
            content
                .frame(width: 40, height: 40, alignment: .center)
        }
    }


}

   //MARK: PREVIEW

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 410, height: 220))
    }
}
