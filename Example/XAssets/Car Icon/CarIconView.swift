//
//  CarIconView.swift
//  XAssets
//
//  Created by Connor Wang on 8/11/15.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import XAssets

@IBDesignable
final class CarIconView : UIView {
    override func drawRect(rect: CGRect) {
        AssetsKit.drawCarIcon(scale: 1)
    }
}