//
//  Level22ViewController.swift
//  Şüphe
//
//  Created by Ufuk Celen on 13.06.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit

class L22VC: UIViewController {

 let userArray = ["missing","Missing","MISSING","MİSSİNG"]
    
@IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var but1: UIButton!
   @IBOutlet weak var idv: UIImageView!
    
 override func viewDidLoad() {
        super.viewDidLoad()

    

    let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.dark//.alert
        
        
       
        userTextField.returnKeyType = UIReturnKeyType.default
        
        //   applyMotionEffect(toView: myImage, magnitude: 2)
        applyMotionEffect(toView: userTextField, magnitude: 20)
      //  applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: myImg, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
        applyMotionEffect(toView: but1, magnitude: 20)
        
        
        //  applyMotionEffect(toView: backImg, magnitude: -40)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   

    @IBAction func girisPressed(_ sender: UIButton) {
        
        if userArray.contains(userTextField.text!) {
            performSegue(withIdentifier: "to23", sender: nil)
            playSuccess()
        }else{
            userTextField.text = ""
            playError()
        }
             
    }
}
