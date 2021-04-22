//
//  LoginView.swift
//  BookRestaurantTable
//
//  Created by user on 16.04.2021.
//

import SwiftUI

struct LoginView: View {
    //@State var email = ""
   // @State var password = ""
    @ObservedObject var state:LoginState
    var body: some View {
        VStack (spacing: 40)  {
                    
            Image(uiImage: #imageLiteral(resourceName: "img-1"))
                .resizable()
                .scaledToFit()
                
            //Spacer(minLength: 1)
            VStack(spacing: 0) {
                
                Text("Email")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(width: 327, alignment: .topLeading)
                    .lineSpacing(18)
                    .padding(.top, 2)
                    //.padding(.bottom)
                    .frame(width: 327, height: 24)
                
                TextField("", text: $state.email)
                    .frame(width: 327, height: 48)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
             
                
                Text("Password")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(width: 327, alignment: .topLeading)
                    .lineSpacing(18)
                    //.padding(.top, 2)
                    //.padding(.bottom)
                    .frame(width: 327, height: 24)
                    .padding(.top,15)
                
                TextField("", text: $state.password)
                    .frame(width: 327, height: 48)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
                

                    

                
                Button(action: {
                    state.controller?.authVerification(email: state.email, password: state.password)
                }) {
                    Text("Sign in")
                        .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.body)
                    .multilineTextAlignment(.center)
                }
                .frame(width: 226, height: 48)
                .background(Color(red: 0.23, green: 0.49, blue: 1))
                .cornerRadius(24)
                .shadow(radius: 16, y: 8)
                .padding(.top,15)
                
                HStack {
                    Text("Don’t have an account?")
                        .font(.footnote)
                    
                    Button(action: {
                        // What to perform
                        state.controller?.goToRegistration()
                    }) {
                    Text("Sign up")
                    .font(.footnote)
                    .foregroundColor(.black)
                    
                    }
                }
                .padding(.top,30)
            }
            .padding(.horizontal, 10)
            //.frame(width: 327, height: 216)
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .top
            )
        //.padding(.horizontal, 16)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.84, green: 0.87, blue: 0.91), Color(red: 0.85, green: 0.88, blue: 0.92)]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(state: LoginState())
    }
}
