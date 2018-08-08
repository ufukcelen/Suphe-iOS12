//
//  myCustomTextField.swift
//  Şüphe
//
//  Created by Ufuk Çelen on 2.05.2018.
//  Copyright © 2018 Ufuk Çelen. All rights reserved.
//


import UIKit

@IBDesignable
class myText: UITextField {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderColor = UIColor(white : 1 / 255, alpha: 1).cgColor
        self.layer.borderWidth = 1
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
}

