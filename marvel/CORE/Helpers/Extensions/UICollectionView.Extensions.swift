//
//  UICollectionView.Extensions.swift
//  marvel
//
//  Created by Ghazi Tozri on 8/2/2022.
//

import Foundation
import UIKit

public extension UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

public extension UICollectionView {
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        register(cellClass, forCellWithReuseIdentifier: identifier)
    }

    func registerCellNib(_ cellClass: AnyClass) {
        let identifier = String.className(cellClass)
        let nib = UINib(nibName: identifier, bundle: nil)
        register(nib, forCellWithReuseIdentifier: identifier)
    }
}
