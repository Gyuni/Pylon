//
//  VisualEffectView.swift
//  
//
//  Created by Gyuni on 2023/07/01.
//

import Foundation
import UIKit
import SwiftUI

public struct VisualEffectView: UIViewRepresentable {
    public var effect: UIVisualEffect?
    public init(effect: UIVisualEffect?) { self.effect = effect }
    public func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    public func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}
