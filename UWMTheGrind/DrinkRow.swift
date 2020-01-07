//
//  DrinkRow.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/7/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    var body: some View {
        
        VStack(alignment: .leading) {
            
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top) {
                    ForEach (self.drinks, id: \.name)
                    {
                        drink in
                        DrinkItem(drink: drink)
                        .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
            }
            
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
