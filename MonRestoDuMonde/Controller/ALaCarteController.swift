//
//  ALaCarteController.swift
//  MonRestoDuMonde
//
//  Created by Valentin SCHERER on 25/08/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class ALaCarteController: UITableViewController {
    
    let cellID = "PlatCell"
    var tousLesPlats = [ALaCarte]()
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return tousLesPlats.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tousLesPlats[section].plats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PlatCell {
            cell.miseEnPlace(plat: plat)
        return cell
        }
        return UITableViewCell()
        
    }
    
}
