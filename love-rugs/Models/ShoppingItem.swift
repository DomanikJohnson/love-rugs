//
//  ShoppingItem.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/8/21.
//

import Foundation
import SwiftUI

struct ShoppingItem: Decodable, Identifiable {
    
    var image = ""
    var title = ""
    var author = ""
    var isFavourite = false
    var currentPage = 0
    var rating = 0
    var id  = 0
    var content:[String] = []
    
    
}

struct ShoppingItem_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
