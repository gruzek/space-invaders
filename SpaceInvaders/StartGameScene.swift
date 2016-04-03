//
//  StartGameScene.swift
//  SpaceInvaders
//
//  Created by George Ruzek on 4/3/16.
//  Copyright © 2016 Sharp Top Software. All rights reserved.
//

import UIKit
import SpriteKit

class StartGameScene: SKScene {
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        NSLog("We have loaded the start screen")
    }
}
