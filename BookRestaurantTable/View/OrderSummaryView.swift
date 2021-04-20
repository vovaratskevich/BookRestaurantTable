//
//  OrderSummaryView.swift
//  BookRestaurantTable
//
//  Created by user on 16.04.2021.
//

import SwiftUI

struct OrderSummaryView: View {
    var body: some View {
        VStack {
           

            ZStack (alignment: .top) {
                Image(uiImage: #imageLiteral(resourceName: "Frame 107"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
            }
            .padding(.bottom, 25)

            VStack() {
                    Text("The table has been booked")
                    .fontWeight(.semibold)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 10)
                    //.frame(width: 343, alignment: .top)
                    //.tracking(0.38)
                    //.lineSpacing(25)

                    Text("We’ll wait for you on time.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    //.frame(width: 343, alignment: .top)
                    //.lineSpacing(22)
            }
            .padding(.bottom, 200)
            
            Button(action: {
                // What to perform
            }) {
                Text("Continue")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.body)
                .multilineTextAlignment(.center)
                .frame(width: 194, alignment: .top)
                .lineSpacing(22)
                .padding(.horizontal, 16)
                .padding(.vertical, 13)
                .frame(width: 226, height: 48)
                .background(Color(red: 0.24, green: 0.49, blue: 1))
                .cornerRadius(24)
                .shadow(radius: 16, y: 8)
            }
            
            
            
        }
        //.padding(.top, 44)
        //.padding(.bottom, 50)
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .background(Color.white)
    }
}

struct OrderSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderSummaryView()
    }
}
