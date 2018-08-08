//
//  L42VC.swift
//  Şüphe
//
//  Created by Ufuk Celen on 26.07.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L42VC: UIViewController {

    let userArray = ["4","6","dört","dort","Dört","Dort","DÖRT","DORT","altı","alti","Altı","Alti","ALTI","ALTİ"]
    let passArray = ["4","6","dört","dort","Dört","Dort","DÖRT","DORT","altı","alti","Altı","Alti","ALTI","ALTİ"]
    
    
    @IBOutlet weak var baslik: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var but1: UIButton!
    
    @IBOutlet weak var idv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
        
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func enterPressed(_ sender: UIButton) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to44", sender: self)
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




