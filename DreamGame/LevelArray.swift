//
//  LevelArray.swift
//  DreamGame
//
//  Created by N S on 01.04.2023.
//

import Foundation

struct LevelArray<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?> //LevelArray contains array
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(repeating: nil, count: columns * rows)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[columns * row + column]
        }
        set {
            array[columns * row + column] = newValue
        }
    }
    
}
