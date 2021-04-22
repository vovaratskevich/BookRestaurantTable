//
//  LoginViewModel.swift
//  BookRestaurantTable
//
//  Created by user on 19.04.2021.
//

import Foundation

final class LoginState: ObservableObject {
    var controller: LoginViewController?
    
    @Published var email = ""
    @Published var password = ""
    @Published var isAuth: Bool = false
}
