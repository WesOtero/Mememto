//
//  UIHelper.swift
//  Memento
//
//  Created by Wesley Otero on 5/30/20.
//  Copyright © 2020 Wesley Otero. All rights reserved.
//

import UIKit

class UIHelper {
    
    static func createThreeColumnFolowLayout(in view: UIView) -> UICollectionViewFlowLayout { // Will determine how the screens are distributed in the screen
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimunItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimunItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
        return flowLayout
    }
    
}
