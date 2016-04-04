//
//  SplashPageScene.swift
//  SpaceInvaders
//
//  Created by George Ruzek on 4/3/16.
//  Copyright © 2016 Sharp Top Software. All rights reserved.
//

import UIKit
import SpriteKit

class SplashPageScene: SKScene {
    
    func nextScene() {
        let scene = StartGameScene(size: (view?.bounds.size)!)
        view?.showsFPS = true
        view?.showsNodeCount = true
        view?.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        view?.presentScene(scene)
    }
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        let logo = SKSpriteNode(imageNamed: "sharptop-logo")
        logo.position = CGPointMake(size.width/2,size.height/2 - 100)
        logo.name = "sharptop-logo"
        logo.alpha=0.0
        
        // set up the fadein / wait / fadeout
        let fadeInAction = SKAction.fadeInWithDuration(1)
        let fadeOutAction = SKAction.fadeOutWithDuration(2)
        let waitAction = SKAction.waitForDuration(1)
        let nextScreenAction = SKAction.runBlock(nextScene)
        let sequenceAction = SKAction.sequence([fadeInAction, waitAction, fadeOutAction, nextScreenAction])
        
        addChild(logo)
        logo.runAction(sequenceAction)
    }

}
