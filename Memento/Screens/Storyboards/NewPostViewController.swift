//
//  NewPostViewController.swift
//  Memento
//
//  Created by Wesley Otero on 5/23/20.
//  Copyright © 2020 Wesley Otero. All rights reserved.
//

import UIKit

class NewPostViewController: UIViewController {
    
    @IBOutlet weak var titleNavBarItem: UINavigationItem!
    
    override func viewDidLoad() {
       super.viewDidLoad()
        configureNavBar()
       
   }
    
    func configureNavBar() {
           navigationController?.setNavigationBarHidden(true, animated: true)
        titleNavBarItem.title = self.title
       }

}
