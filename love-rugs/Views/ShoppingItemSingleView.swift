//
//  ShoppingItemSingleView.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/12/21.
//

import SwiftUI

struct ShoppingItemSingleView: View {
    var p = ShoppingItemModel()
    
    var shoppingItem: ShoppingItem
    var star = "star"
    @State var pick: Int = 2
    var body: some View {
        VStack{
            Text(shoppingItem.title)
                .bold()
                .font(.largeTitle)
                .padding(.top)
            
            Spacer()
            Text("Read Now")
            Spacer()
            Button(action:p.pages , label: {
            Image(shoppingItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            })
            
            Text("Mark Later!")
            Spacer()
     
                Image(systemName: star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.yellow)
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
           
            
            Text("Rate \(shoppingItem.title)!")
                .font(.caption)
            
            VStack {
                Picker("", selection: $pick) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                Spacer()
                
          

            }   .pickerStyle(SegmentedPickerStyle())
                .frame(width: 200)

            

    
    }
}

struct ShoppingItemSingleView_Previews: PreviewProvider {
    static var previews: some View {
        var model  = ShoppingItemModel().shoppingItemsArr[0]
        ShoppingItemSingleView(shoppingItem: model)
    }
}
}
