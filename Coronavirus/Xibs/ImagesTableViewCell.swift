//
//  ImagesTableViewCell.swift
//  Coronavirus
//
//  Created by Iam Wayne on 2/29/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit

class ImagesTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImages: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
