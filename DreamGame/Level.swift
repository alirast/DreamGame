//
//  Level.swift
//  DreamGame
//
//  Created by N S on 01.04.2023.
//

import Foundation

let numberOfColumns = 9
let numberOfRows = 9

class Level {
    var items = LevelArray<Item>(columns: numberOfColumns, rows: numberOfRows)
    
    func itemAt(column: Int, row: Int) -> Item? {
        //checking
        assert(column >= 0 && column < numberOfColumns)
        assert(row >= 0 && row < numberOfRows)
        return items[column, row]
    }
    
    func shuffle() -> Set<Item> {
        return createInitialItems()
    }
//TODO: - check
    func createInitialItems() -> Set<Item> {
        var set = Set<Item>()
        for row in 0..<numberOfRows {
            for column in 0..<numberOfColumns {
                let itemType = ItemType.random()
                let item = Item(column: column, row: row, itemType: itemType)
                items[column, row] = item
                set.insert(item)
            }
        }
        return set
    }
}
