//
//  L27VC.swift
//  Şüphe
//
//  Created by Ufuk Celen on 15.07.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import UIKit
import AudioToolbox

class L27VC: UIViewController {

    
    let userArray = ["ascension","Ascension","ASCENSİON","ASCENSION"]

    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
    
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        
        applyMotionEffect(toView: passTextField, magnitude: 20)
        applyMotionEffect(toView: baslik, magnitude: 20)
        applyMotionEffect(toView: but1, magnitude: 30)
        applyMotionEffect(toView: idv, magnitude: 10)
        
        applyMotionEffect(toView: but3, magnitude: 20)
        
        
        
        //Klavye Renk
        let textFieldAppearance = UITextField.appearance()
        textFieldAppearance.keyboardAppearance = .dark //.default//.light//.alert
        /////////////////
        
        
        
    }
    
    
    @IBAction func calPressed(_ sender: Any) {
        
        if let soundURL = Bundle.main.url(forResource: "l27", withExtension: "wav"){
            
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            //Play
            AudioServicesPlaySystemSound(mySound)
        }
        
        
        
        
    }
    
    
    
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(passTextField.text!) {
            performSegue(withIdentifier: "to28", sender: nil)
            playSuccess()
        }else{
            passTextField.text = ""
            playError()
        }
        
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
