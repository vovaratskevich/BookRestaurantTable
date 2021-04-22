//
//  LoginViewController.swift
//  BookRestaurantTable
//
//  Created by user on 20.04.2021.
//

import UIKit
import SwiftUI

class RegistrationViewController: UIHostingController<RegistrationView> {
    private let state = RegistrationState()
       init(){
        let view = RegistrationView(state:state)
        super.init(rootView: view)
        state.controller = self

      }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func goToLogin()
    {
        if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
            let controller = LoginViewController()
            sceneDelegate.window?.rootViewController = controller
            sceneDelegate.window?.makeKeyAndVisible()
        }
    }
    func goToMain()
    {
        if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
            
            let controller = UITabBarController()
           // controller.tabBar.
           //
            controller.tabBar.barTintColor = UIColor.white
            
            //let homeController = HomeViewController()
            //let homeNav = UINavigationController(rootViewController: homeController)
           // homeNav.navigationBar.isHidden = true
            
            //let ordersController = OrdersViewController()
            //let ordersNav = UINavigationController(rootViewController: ordersController)
           //ordersNav.navigationBar.isHidden = true
       
            
            //let accountController = AccountViewController()
           // let accountNav = UINavigationController(rootViewController: accountController)
          //  accountNav.navigationBar.isHidden = true
            
            
            //controller.setViewControllers([homeController,ordersController,accountController], animated: true)
            sceneDelegate.window?.rootViewController = controller
            sceneDelegate.window?.makeKeyAndVisible()
           
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
