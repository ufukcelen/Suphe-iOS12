//
//  Level20ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 7.06.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L21VC: UIViewController {

   
    let userArray = ["blues","Blues","BLUES"]
    let passArray=["brothers","Brothers","BROTHERS"]
    
    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.dark//.alert
        
        
        passTextField.returnKeyType = UIReturnKeyType.default
        userTextField.returnKeyType = UIReturnKeyType.default
        
        //   applyMotionEffect(toView: myImage, magnitude: 2)
      applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: imageV, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but1, magnitude: 20)
        
        
        //  applyMotionEffect(toView: backImg, magnitude: -40)
        
        
        
        
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to22", sender: self)
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
    

}
