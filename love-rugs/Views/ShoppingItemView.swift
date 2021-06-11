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
    
    var body: some View {
        VStack{
                Text("My Library")
                    .font(.largeTitle)
                    .bold()
            Spacer()
            
            
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
