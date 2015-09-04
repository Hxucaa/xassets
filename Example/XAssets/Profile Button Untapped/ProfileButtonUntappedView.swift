//
//  HomeButtonUntappedView.swift
//  XAssets
//
//  Created by Connor Wang on 8/11/15.
//  Copyright (c) 2015 ZenChat Interactive Inc. All rights reserved.
//

import Foundation
import UIKit
import XAssets

@IBDesignable
final class ProfileButtonUntappedView : UIView {
    override func drawRect(rect: CGRect) {
        AssetsKit.drawProfileButtonUntapped(scaleX: 1)
    }
}