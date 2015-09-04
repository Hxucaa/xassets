//
//  AssetsKit+extension.swift
//  Pods
//
//  Created by Lance Zhu on 2015-08-24.
//
//

import Foundation

extension AssetsKit {
    
    internal class func x_imageOfEtcIcon(sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        // enter the size of the original drawing
        
        let rect = CGRect(origin: CGPointZero, size: sizeToFit ?? drawingSize)
        UIGraphicsBeginImageContextWithOptions(sizeToFit ?? drawingSize, opaque == nil ? true : opaque!, imageContextScale == nil ? 0 : imageContextScale!)
        
        if let backgroundColor = backgroundColor {
            backgroundColor.set()
            UIRectFill(rect)
        }

        // calculate scaleX and scaleY based on size
        let scaledX: CGFloat = (sizeToFit ?? drawingSize).width / drawingSize.width
        let scaledY: CGFloat = (sizeToFit ?? drawingSize).height / drawingSize.height
        AssetsKit.drawEtcIcon(scaleX: scaledX, scaleY: scaledY)
        
        let imageOfEtcIcon = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return imageOfEtcIcon
    }
}