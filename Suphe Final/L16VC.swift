//
//  LLLL15ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 31.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L16VC: UIViewController {

    let userArray = ["your","Your","YOUR"]
    let passArray = ["head","Head","HEAD"]
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but2, magnitude: 20)
        
        
        //Klavye Renk
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        /////////////////
        
 }
    
   
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to17", sender: self)
                playSuccess()
                
            }else{
                userTextField.text = ""
                passTextField.text = ""
                playError()
            }
        }else{
            userTextField.text = ""
            passTextField.text = ""
            playError()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    }
    
  


