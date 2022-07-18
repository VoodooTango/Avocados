//
//  FactsView.swift
//  Avocados
//
//  Created by MAC on 16/07/22.
//

import SwiftUI

struct FactsView: View {
    //MARK: PROPERTIES
    
    var fact: Fact
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Text(fact.content)
                .font(.footnote)
                .foregroundColor(Color.white)
                .padding(.leading, 36)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
                        .cornerRadius(12)
                        .lineLimit(6)
                        .multilineTextAlignment(.leading)
                        
            )
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                 Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                    Circle()
                    .fill(Color("ColorApparenceAdaptive"))
                    .frame(width: 89, height: 89, alignment: .center)
                )
                .offset(x: -162)
        }//: ZSTACK
    }
}
    //MARK: PREVIEW
struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 420, height: 210))
    }
}
