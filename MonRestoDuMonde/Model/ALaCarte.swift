//
//  ALaCarte.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 26/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class ALaCarte {
    
    private var _type: Type
    private var _plats: [Plat]
    
    var type: Type {
        return _type
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(type: Type) {
        self._type = type
        self._plats = [Plat]()
        
        
    }
    
}
