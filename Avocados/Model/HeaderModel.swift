//
//  HeaderModel.swift
//  Avocados
//
//  Created by MAC on 16/07/22.
//

import SwiftUI

//MARK: HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
