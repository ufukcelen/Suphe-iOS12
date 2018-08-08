//
//  Level3ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 29.04.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L17VC: UIViewController {

    
    let userArray = ["riverside","Riverside","RIVERSIDE","RİVERSİDE"]
   
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var idv: UIImageView!
 
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        /////////////////
        
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
     //   applyMotionEffect(toView: userTextField, magnitude: 30)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
   //  applyMotionEffect(toView: but2, magnitude: 20)
        
        
        
        
    }

   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func girisPressed(_ sender: Any) {
        
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to18", sender: self)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
    
        }

    
    }
    
   


