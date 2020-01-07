//
//  Home.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/7/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    //string= key
    // drink = value
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue})
    }
    var body: some View {
        ZStack{
            Color.blue
        NavigationView{
            
            List(categories.keys.sorted(),
                 id: \String.self)
            {
                key in DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("The Grind"))
            
        
        }
    }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
