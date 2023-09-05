//
//  TimeInterval.swift
//  
//
//  Created by Gyuni on 2023/07/16.
//

import Foundation

extension TimeInterval {
    @inlinable
    public static func seconds(_ seconds: Double) -> Self {
        return seconds
    }

    @inlinable
    public static func milliseconds(_ milliseconds: Double) -> Self {
        return milliseconds / 1000.0
    }
}
