//
//  Collection.swift
//  
//
//  Created by Gyuni on 2023/07/16.
//

import Foundation

extension Collection {
    @inlinable
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
