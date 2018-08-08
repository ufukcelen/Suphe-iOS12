//
//  L13HintVC.swift
//  Şüphe
//
//  Created by Ufuk Celen on 28.07.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L13HintVC: UIViewController {

    @IBOutlet weak var panelView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
