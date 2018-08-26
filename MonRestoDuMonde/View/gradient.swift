//
//  gradient.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 26/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class gradient: CAGradientLayer {
    

    override init(layer: Any) {
        super.init(layer: layer)
        miseEnPlace()
    }

    override init() {
        super.init()
        miseEnPlace()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace() {
        frame = UIScreen.main.bounds
        colors = [NOIR.cgColor, GRIS_TRES_FONCE.cgColor]
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
        locations = [0, 1]
    }
    
}


