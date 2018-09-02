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
    let segueID = "VersDetails"
    
    var menus = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les Menus du monde"
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        
        let vue = UIView(frame: CollectionView.bounds)
        vue.layer.addSublayer(gradient())
        CollectionView.backgroundView = vue
        
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
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = menus[indexPath.item]
        performSegue(withIdentifier: segueID, sender: menu)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let detail = segue.destination as? DetailsController {
                detail.menu = sender as? Menu
            }
        }
        
    }
}


