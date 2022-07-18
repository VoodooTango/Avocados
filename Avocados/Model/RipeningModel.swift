//
//  RipeningModel.swift
//  Avocados
//
//  Created by MAC on 17/07/22.
//

import SwiftUI
//MARK: RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
    
}
