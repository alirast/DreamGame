//
//  GameScene.swift
//  DreamGame
//
//  Created by N S on 25.03.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
//FIXME: - maybe without sounds
    let swapSound = SKAction.playSoundFileNamed("swap.wav", waitForCompletion: false)
    let invalidSwapSound = SKAction.playSoundFileNamed("error.wav", waitForCompletion: false)
    let matchSound = SKAction.playSoundFileNamed("match.wav", waitForCompletion: false)
    let fallingItemSound = SKAction.playSoundFileNamed("falling.wav", waitForCompletion: false)
    let addItemSound = SKAction.playSoundFileNamed("add.wav", waitForCompletion: false)
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let background = SKSpriteNode(imageNamed: "background")
        background.size = size
        addChild(background)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
