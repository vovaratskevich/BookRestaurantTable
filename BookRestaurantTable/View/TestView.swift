//
//  TestView.swift
//  BookRestaurantTable
//
//  Created by user on 19.04.2021.
//

import SwiftUI

struct TestView: View {
    var pathImage:String = "Rectangle2"
    var nameRestaraunt:String = "Jack’s Stir Brew Coffee"
    var foodCategory:String = "Coffee"
    var rating:String = "4.0"
    var ratingStar:CGFloat
    var maxRating: Int = 5
    var numberOfRatings:String = "456"
    var location:String = "139 Reade St, New York, NY 10013,"
    var phoneNumber:String = "+1 345 8438-548"
    var time:String = "12.00"
    var description:String = "Some coffeehouses may serve cold drinks such as iced coffee and iced tea; in continental Europe, cafés serve alcoholic drinks."
    
    var body: some View {
        ScrollView(showsIndicators:false) {
            VStack(alignment:.leading){
                Image(pathImage)
                    .overlay(
                        HStack{
                            Button(action:{
                                
                            })
                            {
                                Image("Union1")
                                    .resizable()
                                    .frame(width:24,height: 24)
                            }
                            
                            Spacer()
                            
                            Button(action:{
                                
                            })
                            {
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width:24,height: 24)
                            }
                            .foregroundColor(.white)
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top,55)
                        ,alignment: .top)

                Text("Jack’s Stir Brew Coffee")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(.leading)
                    .padding(.top)
                
                Text(foodCategory)
                    .font(.footnote)
                    .padding(.leading)
                    .foregroundColor(.gray)
                    .padding(.top, 1)
                
            HStack {
                
                HStack {
                    let stars = HStack(spacing: 0) {
                        ForEach(0..<maxRating) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                        }
                    }
                    stars.overlay(
                        GeometryReader { g in
                            let width = ratingStar/CGFloat(maxRating) * g.size.width
                            ZStack(alignment: .leading) {
                                Rectangle()
                                    .frame(width: width)
                                    .foregroundColor(.yellow)
                            }
                        }
                        .mask(stars)
                    )
                    .foregroundColor(.gray)
                }
                .frame(width:120,height: 24)
                
                Text(rating)
                    .fontWeight(.semibold)
                    .font(.body)
                
                Text(numberOfRatings + " Reviews")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
            .padding(.top, 1)
                
            HStack{
                VStack(alignment:.leading) {
                        HStack{
                            Image("pinIcon")
                            Text(location)
                                .font(.body)
                                .lineSpacing(2)
                        }
                        Button(action:{
                            //
                        }){
                            Text("View map")
                                .font(.footnote)
                        }
                        .padding(.leading,35)
                    }
                    Image("Frame56")
                        .frame(width: 88, height: 88)
                        .cornerRadius(16)
                }
                .padding(.leading)
                
                HStack{                    
                    Image("phoneIcon")
                    
                    Text(phoneNumber)
                        .font(.body)
                }
                .padding(.leading)
                
                HStack{
                    
                    Image("timeIcon")
                        .foregroundColor(.gray)
                    
                   Text("Avaliable untill " + time + "PM")
                    
                    
                }
                .padding(.top)
                .padding(.leading)
                
                Button(action:{}){
                    Text("View schedule")
                        .font(.footnote)
                }
                .padding(.leading,50)
                 
                HStack(alignment:.top){
                    Image("infoIcon")
                    Text(description)
                        .font(.body)
                        .frame(width: 300, alignment: .topLeading)
                        .lineSpacing(2)
                }
                .padding()
            }
            
            Button(action:{
                //
            }){
            Text("Book a table")
                .fontWeight(.semibold)
                .foregroundColor(.white)
            }
            .frame(width: 226, height: 48)
            .background(Color(red: 0.24, green: 0.49, blue: 1))
            .cornerRadius(24)
            .shadow(radius: 16, y: 8)
            .padding(.top)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(ratingStar: 4.0)
    }
}
