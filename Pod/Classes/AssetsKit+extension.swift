//
//  AssetsKit+extension.swift
//  Pods
//
//  Created by Lance Zhu on 2015-08-24.
//
//

import Foundation

extension AssetsKit {
    
    private class func drawing(draw: (scaledX: CGFloat, scaledY: CGFloat) -> Void, sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        
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
        
        draw(scaledX: scaledX, scaledY: scaledY)
        
        let imageOfEtcIcon = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return imageOfEtcIcon
    }
    
    internal class func x_imageOfEtcIcon(sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        
        return self.drawing(
            { scaledX, scaledY in
                AssetsKit.drawEtcIcon(scaleX: scaledX, scaleY: scaledY)
            },
            sizeToFit: sizeToFit,
            drawingSize: drawingSize,
            backgroundColor: backgroundColor,
            opaque: opaque,
            imageContextScale: imageContextScale
        )
    }
}