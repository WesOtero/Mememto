//
//  UserProfileViewController.swift
//  Memento
//
//  Created by Wesley Otero on 5/23/20.
//  Copyright © 2020 Wesley Otero. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    @IBOutlet weak var titleNavBarItem: UINavigationItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        configureCollectionView()
    }
    
    func configureNavBar() {
        titleNavBarItem.title = "*Username*"
    }
    
    func configureCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UIHelper.createThreeColumnFolowLayout(in: view)
    }
    
}

extension UserProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Picture", for: indexPath) as! PictureCollectionViewCell
        
        return cell
    }
    
    
}
