//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 26/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {
    
    @IBOutlet weak var imageDuPlat: UIImageView!
    
    @IBOutlet weak var descDuPlat: UILabel!
    
    var plat: Plat!
    
    func miseEnPlace(plat: Plat) {
        self.plat = plat
        
        imageDuPlat.image = self.plat.image
        imageDuPlat.contentMode = .scaleAspectFill
        imageDuPlat.clipsToBounds = true
        imageDuPlat.layer.cornerRadius = 20
        
        
        descDuPlat.text = self.plat.desc
        descDuPlat.textAlignment = .center
        descDuPlat.numberOfLines = 0
        descDuPlat.font = FONT_DE_BASE
        descDuPlat.textColor = GRIS_TRES_CLAIR
        
    }
    
    


}
