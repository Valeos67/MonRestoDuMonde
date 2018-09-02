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
        print("Ca marche bien, menu: \(menu.pays)")
    }

}
