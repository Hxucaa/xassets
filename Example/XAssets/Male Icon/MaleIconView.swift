//
//  MaleIconView.swift
//  XAssets
//
//  Created by Connor Wang on 8/6/15.
//  Copyright (c) Connor Wang. All rights reserved.
//

import Foundation
import UIKit
import XAssets

@IBDesignable
final class MaleIconView : UIView {
    override func drawRect(rect: CGRect) {
        AssetsKit.drawMaleIcon(scaleX: 1)
    }
}