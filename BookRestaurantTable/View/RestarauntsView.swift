//
//  RestarauntsView.swift
//  BookRestaurantTable
//
//  Created by user on 16.04.2021.
//

import SwiftUI

struct RestarauntsView: View {
        var gridItems:[GridItem]  = [
            GridItem(.flexible()),
            GridItem(.flexible())]
        var body: some View {
            VStack{
                HStack{
                    Button(action:{
                        // What to perform
                    })
                    {
                        Image(uiImage: #imageLiteral(resourceName: "Union"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    .padding(.leading, 16)
                    
                    Spacer()
                    
                    Text("Restaraunts")
                        .fontWeight(.semibold)
                        .font(.body)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Button(action:{
                        // What to perform
                    })
                    {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    .foregroundColor(.black)
                    .padding(.trailing)
                }
                
                ScrollView(showsIndicators:false){
                    LazyVGrid(columns: gridItems){
                        ForEach(0..<3)
                        { _ in
                            RestarauntItemView()
                        }
                        
                    }
                    .padding(.top)
                    .padding(.horizontal, 16)
                }
            }
        }
}

struct RestarauntsView_Previews: PreviewProvider {
    static var previews: some View {
        RestarauntsView()
    }
}
