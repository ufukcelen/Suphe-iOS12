//
//  L16HintVC.swift
//  Şüphe
//
//  Created by Ufuk Celen on 1.07.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L16HintVC: UIViewController {

    @IBOutlet weak var viewH: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // applyMotionEffect(toView: viewH, magnitude: 20)
    }
    
    @IBAction func tamamPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
