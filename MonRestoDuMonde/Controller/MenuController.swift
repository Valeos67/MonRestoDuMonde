//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 25/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    let cellID = "MenuCell"
    
    var menus = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les Menus du monde"
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        
        
        menus = LesPlats.obtenir.lesMenus()
        CollectionView.reloadData()
        
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let menu = menus[indexPath.item]
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell
        {
            cell.miseEnPlace(menu: menu)
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}


