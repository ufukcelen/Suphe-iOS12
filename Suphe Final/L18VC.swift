//
//  LLLLL17ViewController.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 31.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//

import UIKit
import AudioToolbox

class L18VC: UIViewController {

    
   
    
    let userArray = ["doppler","Doppler","DOPPLER"]
    let passArray = ["etkisi","Etkisi","ETKİSİ","ETKISI"]
  
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var baslik: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var but1: UIButton!
   
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var idv: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        userTextField.returnKeyType = UIReturnKeyType.default
        passTextField.returnKeyType = UIReturnKeyType.default
        
        
        applyMotionEffect(toView: myImage, magnitude: 20)
        applyMotionEffect(toView: userTextField, magnitude: 20)
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
   
        if let soundURL = Bundle.main.url(forResource: "L17", withExtension: "mp3"){
            
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            //Play
            AudioServicesPlaySystemSound(mySound)
        }
        
}

    @IBAction func stopButton(_ sender: UIButton) {
       
       
    }
    
    
    @IBAction func girisPressed(_ sender: Any) {
        if userArray.contains(userTextField.text!){
            if passArray.contains(passTextField.text!){
                
                performSegue(withIdentifier: "to19", sender: self)
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
