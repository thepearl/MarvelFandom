//
//  ComicsListController.swift
//  marvel
//
//  Created by Ghazi Tozri on 7/2/2022.
//

import Foundation
import UIKit
class ComicsListController: UIViewController {
    @IBOutlet weak var comicsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        comicsCollectionView.delegate = self
        comicsCollectionView.dataSource = self
        setupUI()
    }
}

//MARK: - UI
extension ComicsListController {
    func setupUI() {
        comicsCollectionView.contentInset = UIEdgeInsets(top: 80, left: 0, bottom: 20, right: 0)
        comicsCollectionView.scrollIndicatorInsets = UIEdgeInsets(top: 80, left: 0, bottom: 20, right: 0)
    }
    
    func registerCells() {
        let comicCell = UINib(nibName: ComicCell.reuseIdentifier, bundle: nil)
        comicsCollectionView.register(comicCell, forCellWithReuseIdentifier: ComicCell.reuseIdentifier)
    }
}

//MARK: - CollectionView Delegate + DataSource
extension ComicsListController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = comicsCollectionView.dequeueReusableCell(withReuseIdentifier: ComicCell.reuseIdentifier, for: indexPath) as? ComicCell
        else { return UICollectionViewCell() }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2, height: 234)
    }
}

