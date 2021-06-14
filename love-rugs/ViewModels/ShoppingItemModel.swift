//
//  ShoppingItemModel.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/9/21.
//

import Foundation


class ShoppingItemModel:ObservableObject {
    // Array of shopping items
   @Published var shoppingItemsArr = [ShoppingItem]()
    
    init() {
        // Setting value of shopping item from json
       shoppingItemsArr = ShoppingItemService.getShoppingItemJson()
    }
    
    
    func pages() {
        print("Hello ww=rel")
    }
}
