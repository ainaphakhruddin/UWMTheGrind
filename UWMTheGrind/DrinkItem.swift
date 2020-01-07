//
//  DrinkItem.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/6/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink: Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
            .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width:300, height: 170)
            .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5.0){
            Text(drink.name)
                .font(.headline)
                .foregroundColor(Color.black)
            
            Text(drink.description)
                .font(.subheadline)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
            .lineLimit(2)
                .frame(height: 40)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
