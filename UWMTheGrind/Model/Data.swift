//
//  Data.swift
//  UWMTheGrind
//
//  Created by Aina Phakhruddin on 1/6/20.
//  Copyright © 2020 Aina Phakhruddin. All rights reserved.
//

import Foundation

//load function recieves a file name as parameter and gets data stored in the file
let drinkData:[Drink] = load("drinks.json")

func load<T:Decodable>(_ filename: String, as type:T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    //load
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    //must parse in order to return
    do {
          let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
          
      } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
