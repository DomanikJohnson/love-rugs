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
    func page(forid:Int) -> Void {
        if let val = shoppingItemsArr.firstIndex(where:{ $0.id == forid }) {
            print(forid)
            
            self.shoppingItemsArr[val].rating = 3

        }
        

    }
    
    func pages(forid:Int) -> Void {
        if let val = shoppingItemsArr.firstIndex(where:{ $0.id == forid }) {
            print(forid)
            
            self.shoppingItemsArr[val].isFavourite = true

        }
        

    }
}
    
    
    
    


