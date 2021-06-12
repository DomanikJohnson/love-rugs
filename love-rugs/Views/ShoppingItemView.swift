//
//  ContentView.swift
//  love-rugs
//
//  Created by Domanik Johnson on 6/8/21.
//

import SwiftUI

struct ShoppingItemView: View {
    @State var starcol = "star.fill"
    @State var starState = false
    @ObservedObject var model = ShoppingItemModel()
    
    var body: some View {
        VStack{
                Text("My Library")
                    .font(.largeTitle)
                    .bold()
            Spacer()
            GeometryReader { geo in
            NavigationView {
            ScrollView{
                    ForEach(model.shoppingItemsArr) { item in
                      
                            Rectangle()
                                .frame(width: geo.size.width - 45, height: geo.size.width - 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.red)
                        
//                        Text(item.title)
//                            .font(.title2)
//                            .bold()
                        
                           
                    }
                    }
                }
               
            }
            
    
        }
    }
}

struct ShoppingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingItemView()
    }
}

//
//Button(action: {
//
//                if(starState) {
//                    starcol = "star.fill"
//                    self.starState = false
//                }
//                else {
//                   starcol = "star"
//                    self.starState = true
//                }
//
//
//
//            }
//            , label: {
//                Image(systemName: starcol)
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundColor(.yellow)            })
