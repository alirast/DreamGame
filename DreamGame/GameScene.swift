//
//  GameScene.swift
//  DreamGame
//
//  Created by N S on 25.03.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var level: Level!
    let tileWidth: CGFloat = 32.0
    let tileHeight: CGFloat = 36.0
    
    let gameLayer = SKNode() //aka container
    let itemsLayer = SKNode()
//FIXME: - maybe without sounds
    let swapSound = SKAction.playSoundFileNamed("swap.wav", waitForCompletion: false)
    let invalidSwapSound = SKAction.playSoundFileNamed("error.wav", waitForCompletion: false)
    let matchSound = SKAction.playSoundFileNamed("match.wav", waitForCompletion: false)
    let fallingItemSound = SKAction.playSoundFileNamed("falling.wav", waitForCompletion: false)
    let addItemSound = SKAction.playSoundFileNamed("add.wav", waitForCompletion: false)
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5) //center of screen
        let background = SKSpriteNode(imageNamed: "background")
        background.size = size

        let layerPosition = CGPoint(x: -tileWidth * CGFloat(numberOfColumns / 2), y: -tileHeight * CGFloat(numberOfRows / 2))
        itemsLayer.position = layerPosition
        
        addChild(background)
        addChild(gameLayer)
        gameLayer.addChild(itemsLayer)
    }
    
    func addSprites(for items: Set<Item>) {
        for item in items {
            let sprite = SKSpriteNode(imageNamed: item.itemType.spriteName)
            sprite.size = CGSize(width: tileWidth, height: tileHeight)
            sprite.position = pointFor(column: item.column, row: item.row)
            itemsLayer.addChild(sprite)
            item.sprite = sprite
        }
    }
    
    func pointFor(column: Int, row: Int) -> CGPoint {
        return CGPoint(x: CGFloat(column) * tileWidth + tileWidth * 2,
                       y: CGFloat(row) * tileHeight + tileHeight * 2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
