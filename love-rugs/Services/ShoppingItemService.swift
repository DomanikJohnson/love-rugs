//
//  ShoppingItemService.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/11/21.
//

import Foundation

class ShoppingItemService {
    
   static func getShoppingItemJson() -> [ShoppingItem] {
        
    // Get bundle data
    let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
    
    guard  pathString != nil else {
        return [ShoppingItem]()
    }
    
    // Grab url
    let url = URL(fileURLWithPath: pathString!)
    
    do {
        // Get data from URL
      let data =  try Data(contentsOf: url)
        //Decode
      let decoder = JSONDecoder()
    
     // Decode data with decoder method
     let shoppingItemData = try decoder.decode([ShoppingItem].self,  from: data)
    
        // return array
        return shoppingItemData
        
    } catch {
        print(error)
    }
    
    // return empty array
    return [ShoppingItem]()
    }
}
