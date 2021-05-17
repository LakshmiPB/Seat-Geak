//
//  StatusTableViewCell.swift
//  Seat Geek
//
//  Created by Lakshmi Bodempudi on 15/05/21.
//  Copyright © 2021 Lakshmi Bodempudi. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {

    @IBOutlet weak var viewStatusLabel: UILabel!
    
    func updateStatus(to statusToUpdate:String) {
        self.viewStatusLabel.text = statusToUpdate
    }    
}
