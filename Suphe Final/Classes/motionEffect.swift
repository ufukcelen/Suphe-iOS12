//
//  motionEffect.swift
//  Şüphe
//
//  Created by Ufuk Celen on 23.06.2018.
//  Copyright © 2018 Ufuk Celen. All rights reserved.
//

import Foundation
import UIKit

func applyMotionEffect (toView view: UIView,magnitude:Float){
    // Paralax Effecti ekleme Fonksiyonu
    let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
    xMotion.minimumRelativeValue = -magnitude
    xMotion.maximumRelativeValue = magnitude
    
    let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
    yMotion.minimumRelativeValue = -magnitude
    yMotion.maximumRelativeValue = magnitude
    
    let group = UIMotionEffectGroup()
    group.motionEffects = [xMotion,yMotion]
    
    view.addMotionEffect(group)
    
}
