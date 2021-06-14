//
//  ShoppingItem.swiftr.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/14/21.
//

import Foundation

class ShoppingItem: Decodable, Identifiable {
    
    var image = ""
    var title = ""
    var author = ""
    var isFavourite = false
    var currentPage = 0
    var rating = 0
    var id  = 0
    var content:[String] = []
    
    
}
