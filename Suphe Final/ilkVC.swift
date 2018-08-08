//
//  ViewController.swift
//  Suphe Final
//
//  Created by Ufuk Celen on 7.08.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//


import UIKit

class ilkVC: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var parag: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyMotionEffect(toView: logo, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: but2, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: parag, magnitude: 20)
        
        playHaunt()
    }
    
    
    
    
}

