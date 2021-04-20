//
//  HomeView.swift
//  Restaurants
//
//  Created by student on 7.04.21.
//

import SwiftUI

struct Test1View: View {
    var gridItems:[GridItem]  = [
    GridItem(.flexible()),
    GridItem(.flexible())]
var body: some View {
    VStack{
        HStack{
            Button(action:{()})
            {
                Image("backIcon")
                    .resizable()
                    .frame(width:24,height: 24)
            }.foregroundColor(.black)
            .padding(.leading)
            Spacer()
            Text("Restaurants")
                .bold()
            Spacer()
            Button(action:{})
            {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width:24,height: 24)
            }.foregroundColor(.black)
            .padding(.trailing)
        }
        
        ScrollView(showsIndicators:false){
            LazyVGrid(columns: gridItems){
                ForEach(0..<10)
                { _ in
                    RestaurantRowView()
                }
                
            }.padding()
        }
    }
}
}

struct RestaurantRowView: View {
    var nameImage:String = "Rectangle1"
    var nameRestaurant:String = "Hi-Collar"
    var rating:String = "4.2"
    var numberOfRatings:String = "1344"
    @State var isFavorite:Bool = false
    var body: some View {
        VStack(alignment:.leading, spacing:0){
            
            
            ZStack {
                Image(nameImage)
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
                        )
                    }
                    .frame(width: 24, height: 24)
                }
                //frame(width: 40, height: 40)
                .padding(.leading, 120)
                .padding(.trailing, 8)
                .padding(.top, 8)
                .padding(.bottom, 88)
                //.frame(width: 168, height: 136)
                //.background(Color(red: 0, green: 0.23, blue: 0.27, opacity: 0.50))
                //.cornerRadius(16)
                
            }
            
            Text(nameRestaurant)
            .fontWeight(.semibold)
            .font(.body)
            .padding(.top)
            
            HStack (spacing:5) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 16, height: 16)
                
                Text(rating)
                .font(.footnote)
                
                Text("(" + numberOfRatings + ")")
                .font(.footnote)
                .foregroundColor(.gray)
               
            }
            .padding(.top, 5)
            
            
        }
    }
}



struct Test1View_Previews: PreviewProvider {
    static var previews: some View {
        Test1View()
    }
}





