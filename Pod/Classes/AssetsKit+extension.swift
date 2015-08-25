//
//  AssetsKit+extension.swift
//  Pods
//
//  Created by Lance Zhu on 2015-08-24.
//
//

import Foundation

extension AssetsKit {
    
    internal class func x_imageOfEtcIcon(scale: CGFloat? = 1.0, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        let sizeToFit = CGSizeMake(36, 40)
        let rect = CGRect(origin: CGPointZero, size: sizeToFit)
        UIGraphicsBeginImageContextWithOptions(sizeToFit, opaque == nil ? true : opaque!, imageContextScale == nil ? 0 : imageContextScale!)
        
        if let backgroundColor = backgroundColor {
            backgroundColor.set()
            UIRectFill(rect)
        }
        
        AssetsKit.drawEtcIcon(scale: scale == nil ? 1.0 : scale!)
        
        let imageOfEtcIcon = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return imageOfEtcIcon
    }
}