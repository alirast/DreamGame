//
//  Item.swift
//  DreamGame
//
//  Created by N S on 01.04.2023.
//

import SpriteKit

enum ItemType: Int, CustomStringConvertible {
    case unknown = 0
    case tea
    case cards
    case cookie
    case cloudberry
    case pawn
    case shell
    
    var spriteName: String {
        let spriteNames = ["tea", "cards", "cookie", "cloudberry", "pawn", "shell"]
        return spriteNames[rawValue - 1]
    }
//FIXME: - add highlighted items for assets + bigger
    var highlightedSpriteName: String {
        return spriteName + "-highlighted"
    }
//FIXME: - remove force unwrap
    static func random() -> ItemType {
        return ItemType(rawValue: Int(arc4random_uniform(6)) + 1)!
    }
    
    var description: String {
        return spriteName
    }
}

class Item: CustomStringConvertible, Hashable {
    var column: Int
    var row: Int
    let itemType: ItemType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, itemType: ItemType) {
        self.column = column
        self.row = row
        self.itemType = itemType
    }
    
    var description: String {
        return "type: \(itemType) column: \(column) row: \(row)"
    }
    
    var hashValue: Int {
        return row * 10 + column
    }
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.column == rhs.column && lhs.row == rhs.row
    }
    
    
}
