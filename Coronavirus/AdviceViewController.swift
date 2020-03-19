//
//  AdviceViewController.swift
//  Coronavirus
//
//  Created by Iam Wayne on 3/2/20.
//  Copyright © 2020 Iam Wayne. All rights reserved.
//

import UIKit

class AdviceViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriprionLbl: UILabel!
    @IBOutlet weak var adviceImage: UIImageView!
    
    var advice: AdviceForPublic?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let advice = advice {
            titleLbl.text = advice.title
            descriprionLbl.text = advice.description
            adviceImage.image = UIImage(named: advice.imageString)
            print(advice.imageString)
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
