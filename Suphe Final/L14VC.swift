//
//  Level11ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 1.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L14VC: UIViewController {
    
    let userArray = ["smith","Smith","SMITH","SMİTH"]
    
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    override func viewDidLoad() {
       
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
    
        //Klavye Renk
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        /////////////////
        
        
         }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to15", sender: self)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
    }
    }
    
    
    
    
    
    
    



