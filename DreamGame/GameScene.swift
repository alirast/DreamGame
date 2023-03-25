//
//  GameScene.swift
//  DreamGame
//
//  Created by N S on 25.03.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
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
