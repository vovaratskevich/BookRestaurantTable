//
//  HomeViewController.swift
//  BookRestaurantTable
//
//  Created by user on 22.04.2021.
//

import UIKit
import SwiftUI

class HomeViewController: UIHostingController<HomeView> {
    private let state = HomeState()
       init()
      {
        let view = HomeView(state:state)
        super.init(rootView: view)
        state.controller = self

      }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func goToRegistration() {
        if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
            let controller = RegistrationViewController()
            
            sceneDelegate.window?.rootViewController = controller
            sceneDelegate.window?.makeKeyAndVisible()
        }
    }
}
