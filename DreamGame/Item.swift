//
//  Item.swift
//  DreamGame
//
//  Created by N S on 01.04.2023.
//

import SpriteKit

enum ItemType: Int {
    case unknown = 0
    case tea
    case cards
    case cookie
    case cloudberry
    case pawn
    case shell
    
    //rawValue
    var spriteName: String {
        let spriteNames = ["tea", "cards", "cookie", "cloudberry", "pawn", "shell"]
        return spriteNames[rawValue - 1]
    }
//FIXME: - add highlighted items for assets
    var highlightedSpriteName: String {
        return spriteName + "-highlighted"
    }
}

class Item {
    var column: Int
    var row: Int
    let itemType: ItemType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, itemType: ItemType) {
        self.column = column
        self.row = row
        self.itemType = itemType
    }
    
    
}
