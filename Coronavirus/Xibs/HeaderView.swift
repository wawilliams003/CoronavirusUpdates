//
//  HeaderView.swift
//  Coronavirus
//
//  Created by Iam Wayne on 3/4/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    static let reuseIdentifier = "headerView"

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    
}
