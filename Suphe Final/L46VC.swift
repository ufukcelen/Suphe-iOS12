//
//  L46VC.swift
//  Suphe Final
//
//  Created by Ufuk Celen on 8.08.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit

class L46VC: UIViewController {

 
    let userArray = ["mihmandar","Mihmandar","MİHMANDAR","MIHMANDAR"]
    
    
    
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        /////////////////
        
        passTextField.returnKeyType = UIReturnKeyType.default
        
        applyMotionEffect(toView: myImg, magnitude: 20)
        //   applyMotionEffect(toView: userTextField, magnitude: 30)
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 20)
        applyMotionEffect(toView: idv, magnitude: 10)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func enterPressed(_ sender: UIButton) {
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to47", sender: nil)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
    }
    
}
