//
//  FlameIconView.swift
//  XAssets
//
//  Created by Connor Wang on 8/11/15.
//  Copyright (c) Connor Wang. All rights reserved.
//

import Foundation
import UIKit
import XAssets

@IBDesignable
final class FlameIconView : UIView {
    override func drawRect(rect: CGRect) {
        AssetsKit.drawFlameIcon(scale: 0.05)
    }
}