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
        VStack(alignment: .leading){
            Spacer()
            GeometryReader { geo in
            NavigationView {
            ScrollView{
                Spacer()
              
                    ForEach(model.shoppingItemsArr) { item in
                        NavigationLink(
                            destination: ShoppingItemSingleView(shoppingItem: item),
                            label: {
                                
                                // MARK: Row Item
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .frame(width: geo.size.width - 45, height: geo.size.width + 75 , alignment: .center)
                                        .cornerRadius(20)
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 1, y: 1)
                                   
                                    VStack() {
                                    
                                        HStack {
                                            Text(item.title)
                                                .bold()
                                                .foregroundColor(.black)
                                            if(true) {
                                                Text(String(item.isFavourite))
                                            Image(systemName: "star")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            }
                                            
                                        }
                                        
                                           
                                            Text(item.author)
                                                .bold()
                                                .foregroundColor(.black)
                                        Image(item.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geo.size.width - 0 , height: 330, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipped()
                                    }
                              
                                }
                            })
              
                    }.navigationBarTitleDisplayMode(.automatic)
                    .navigationBarTitle("My Library")
                    
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
}
