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
                Text("My Library")
                    .font(.largeTitle)
                    .bold()
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
                                    
                                        Text(item.title)
                                            .bold()
                                            .foregroundColor(.black)
                                           
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
              
            }.navigationBarHidden(true)
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
