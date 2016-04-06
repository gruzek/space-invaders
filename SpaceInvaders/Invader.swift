//
//  Invader.swift
//  SpaceInvaders
//
//  Created by George Ruzek on 4/3/16.
//  Copyright © 2016 Sharp Top Software. All rights reserved.
//

import UIKit
import SpriteKit

class Invader: SKSpriteNode {
    
    var invaderRow = 0
    var invaderColumn = 0
    
    init() {
        let texture = SKTexture(imageNamed: "invader1")
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        self.name = "invader"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    func fireBullet(scene: SKScene){
        
    }
    

}
