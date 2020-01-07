//
//  DrinkDetail.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/7/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    var body: some View {
        
        VStack {
            List{
                ZStack(alignment: .bottom){
                    Image(drink.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Rectangle()
                        .frame(height: 80)
                        .opacity(0.25)
                    .blur(radius: 10)
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text(drink.name)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                            
                            
                            
                        }.padding(.leading)
                            .padding(.bottom)
                        Spacer()
                    }
                }.listRowInsets(EdgeInsets())
                
                VStack {
                    Text(drink.description)
                        .foregroundColor(.black)
                        .font(.body)
                    .lineLimit(nil)
                        .lineSpacing(12)
                    Spacer()
                    HStack{
                        Spacer()
                        OrderButton()
                        Spacer()
                    
                    }.padding(.top, 50)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {
            
        })
        {
            Text("Order")
            
        }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
        .cornerRadius(10)
    }
    
 
}
struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
