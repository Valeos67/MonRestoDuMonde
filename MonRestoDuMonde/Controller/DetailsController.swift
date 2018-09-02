//
//  DetailsController.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 02/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class DetailsController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(gradient())
        view.bringSubview(toFront: scroll)
        
        guard menu != nil else { return }
        miseEnPlace(menu: menu!)
        
        
    }

    func miseEnPlace(menu: Menu) {
        let imageDuMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageDuMenu.image = menu.image
        imageDuMenu.contentMode = .scaleAspectFit
        imageDuMenu.clipsToBounds = true
        scroll.addSubview(imageDuMenu)
        var maxY = imageDuMenu.frame.maxY
        let nomDuMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.textColor = .red
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        scroll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat in menu.plats {
            let vue = PlatVue(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnplace(plat: plat)
            scroll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maxY + 50)
        
        
    }

}
