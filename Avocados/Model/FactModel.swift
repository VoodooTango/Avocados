//
//  FactModel.swift
//  Avocados
//
//  Created by MAC on 17/07/22.
//

import SwiftUI

//MARK: FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
