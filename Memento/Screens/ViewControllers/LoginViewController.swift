//
//  LoginViewController.swift
//  Memento
//
//  Created by Wesley Otero on 5/23/20.
//  Copyright © 2020 Wesley Otero. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func logIn(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(identifier: "Main") as UITabBarController
        navigationController?.pushViewController(viewController, animated: true)
    }
}
