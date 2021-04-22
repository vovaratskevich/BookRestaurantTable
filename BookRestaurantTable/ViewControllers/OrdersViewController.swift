//
//  OrdersViewController.swift
//  BookRestaurantTable
//
//  Created by user on 15.04.2021.
//

import UIKit
import SwiftUI

class OrdersViewController: UIHostingController<OrdersView> {
    private let state = OrdersState()
       init()
      {
        let view = OrdersView(state:state)
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
