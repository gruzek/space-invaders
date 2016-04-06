//
//  Bullet.swift
//  SpaceInvaders
//
//  Created by George Ruzek on 4/6/16.
//  Copyright © 2016 Sharp Top Software. All rights reserved.
//

import UIKit
import SpriteKit

class Bullet: SKSpriteNode {
    
    
    init(imageName: String, bulletSound: String?) {
        let texture = SKTexture(imageNamed: imageName)
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        if(bulletSound != nil){
            runAction(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}