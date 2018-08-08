//
//  LLLL14ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 31.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L15VC: UIViewController {

    let userArray = ["dote","Dote","DOTE"]
    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        
        userTextField.returnKeyType = UIReturnKeyType.default
        applyMotionEffect(toView: myImage, magnitude: 30)
        applyMotionEffect(toView: userTextField, magnitude: 30)
      //  applyMotionEffect(toView: passTextField, magnitude: 30)
    applyMotionEffect(toView: baslik, magnitude: 30)
        applyMotionEffect(toView: but1, magnitude: 30)
        applyMotionEffect(toView: idv, magnitude: 30)
     //   applyMotionEffect(toView: but2, magnitude: 30)Effect(toView: backImg, magnitude: -40)
      
    }

    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(userTextField.text!) {
            performSegue(withIdentifier: "to16", sender: self)
            playSuccess()
        }else{
            userTextField.text = ""
            playError()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
