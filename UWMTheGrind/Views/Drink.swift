//
//  Drink.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/6/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import Foundation


struct Drink: Hashable, Codable, Identifiable {
    
    //need identifiable to display in a list
    //need codable to map json data
    
    var id: Int
    var name: String
    var imageName:String
    var category: Category
    var description: String
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
