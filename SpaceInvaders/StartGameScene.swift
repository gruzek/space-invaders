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
        let startGameButton = SKSpriteNode(imageNamed: "newgamebtn")
        startGameButton.position = CGPointMake(size.width/2,size.height/2 - 100)
        startGameButton.name = "startgame"
        addChild(startGameButton)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.locationInNode(self)
        let touchedNode = self.nodeAtPoint(touchLocation)
        if(touchedNode.name == "startgame"){
            let gameScene = GameScene(size: size)
            gameScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontalWithDuration(1.0)
            view?.presentScene(gameScene,transition: transitionType)
        }
    }
}
