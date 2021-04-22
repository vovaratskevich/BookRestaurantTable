//
//  OrdersView.swift
//  BookRestaurantTable
//
//  Created by user on 22.04.2021.
//

import SwiftUI

struct OrdersView: View {
    @ObservedObject var state: OrdersState
    var orderID:String = "199029"
    var orderStatus:Int = 0
    var orderPrice:String = "140.00"
    var orderDate:String = "August 20,2020 5:00 PM"
    var countPersons:String = "4"
    var pathImage:String = "Rectangle1"
    var nameRestaraunt:String = "Hi-Collar"
    var ratingRestaraunt:String = "4.5"
    var numberOfRatings:String = "349"
    
    var body: some View {
        VStack {
            HStack {
                Text("Orders")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 8)
            .padding(.bottom,8)

            ScrollView(showsIndicators:false){
                LazyVStack{
                    ForEach(0..<10){
                        _ in
                        VStack(alignment:.leading){
                            HStack{
                                Text("ID" + orderID)
                                    .fontWeight(.semibold)
                                    .font(.body)
                    
                                if orderStatus == 0 {
                                    Text("In progress")
                                        .font(.footnote)
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.24, green: 0.49, blue: 1, opacity: 0.08))
                                        .cornerRadius(20)
                                        .foregroundColor(.blue)
                                }
                                else if orderStatus == 1 {
                                    Text("Rejected")
                                        .font(.footnote)
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.24, green: 0.49, blue: 1, opacity: 0.08))
                                        .cornerRadius(20)
                                        .foregroundColor(.blue)
                                }
                                else {
                                    Text("Confirmed")
                                        .font(.footnote)
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.24, green: 0.49, blue: 1, opacity: 0.08))
                                        .cornerRadius(20)
                                        .foregroundColor(.blue)
                                }
                                
                                Spacer()
                                
                                Text("$" + orderPrice)
                                    .fontWeight(.semibold)
                                    .font(.body)
                                    .foregroundColor(.blue)
                            }
                            
                            HStack{
                                Image("calendarIcon")
                                    .resizable()
                                    .frame(width:16,height: 16)
                                    .padding(.trailing,5)
                                
                                Text(orderDate)
                                    .font(.footnote)
                            }
                            
                            HStack{
                                Image("guestsIcon")
                                    .resizable()
                                    .frame(width:16,height: 16)
                                    .padding(.trailing,5)
                                
                                Text(countPersons + " Persons")
                                    .font(.footnote)
                                
                            }
                            
                            HStack{
                                Image(pathImage)
                                    .resizable()
                                    .frame(width:72,height: 72)
                                    .cornerRadius(16)
                                
                                VStack(alignment: .leading, spacing: 0){
                                    Text(nameRestaraunt)
                                        .fontWeight(.semibold)
                                        .font(.body)
                                        .padding(.top,5)
                                        .padding(.leading,5)
                                    
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .foregroundColor(.yellow)
                                            .frame(width:13,height: 13)
                                           // .padding(.trailing,10)
                                        
                                        Text(ratingRestaraunt)
                                            .font(.footnote)
                                        
                                        Text("(" + numberOfRatings + ")")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.leading, 5)
                                    .padding(.top,8)
                                    
                                    Spacer()
                                }
                            }
                            
                            HStack{
                                Spacer()
                                Button(action:{
                                    //
                                })
                                {
                                    Text("Cancel")
                                        .fontWeight(.semibold)
                                        .font(.body)
                                        .foregroundColor(.white)
                                }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 13)
                                    .frame(width: 226, height: 48)
                                    .background(Color(red: 0.24, green: 0.49, blue: 1))
                                    .cornerRadius(24)
                                    .shadow(radius: 16, y: 8)
                                
                                Spacer()
                            }
                            .padding(.top)
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                        
                        Divider()
                            .padding(.leading)
                    }
                }
            }
        }
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView(state: OrdersState())
    }
}
