//
//  RestarauntItemView.swift
//  BookRestaurantTable
//
//  Created by user on 20.04.2021.
//

import SwiftUI

struct RestarauntItemView: View {
    var pathImage:String = "Rectangle1"
    var nameRestaraunt:String = "Hi-Collar"
    var ratingRestaraunt:String = "4.5"
    var numberOfRatings:String = "349"
    @State var isFavorite:Bool = false
    @State var isRestarauntsScreen:Bool = false
    var body: some View {
        VStack(alignment:.leading, spacing:0){
            
            ZStack {
                Image(pathImage)
                    .frame(width: 168, height: 136)
                    .cornerRadius(16)
                
                ZStack {
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                    Circle()
                        .foregroundColor(isFavorite ? .blue : Color(red: 0, green: 0, blue: 0, opacity: 0.48))
                        .frame(width:40,height: 40)
                        .overlay(
                            Image(systemName: "heart" )
                                .resizable()
                                .foregroundColor(.white)
                                .padding(10)
                            ,alignment: .topTrailing)
                        
                    }
                    .frame(width: 24, height: 24)
                }
                .padding(.leading, 120)
                .padding(.trailing, 8)
                .padding(.top, 8)
                .padding(.bottom, 88)
                
            }
            
            Text(nameRestaraunt)
            .fontWeight(.semibold)
            .font(.body)
            .padding(.top)
            
            HStack (spacing:5) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 16, height: 16)
                
                Text(ratingRestaraunt)
                .font(.footnote)
                
                Text("(" + numberOfRatings + ")")
                .font(.footnote)
                .foregroundColor(.gray)
               
            }
            .padding(.top, 5)
            
        }
        //.frame(width: 228, height: 136)
    }
}

struct RestaurantItemView_Previews: PreviewProvider {
    static var previews: some View {
        RestarauntItemView()
    }
}

