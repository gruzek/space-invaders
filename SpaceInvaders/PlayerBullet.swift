//
//  PlayerBullet.swift
//  SpaceInvaders
//
//  Created by George Ruzek on 4/6/16.
//  Copyright © 2016 Sharp Top Software. All rights reserved.
//

import UIKit
import SpriteKit

class PlayerBullet: Bullet {
    
    
    override init(imageName: String, bulletSound:String?){
        super.init(imageName: imageName, bulletSound: bulletSound)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
