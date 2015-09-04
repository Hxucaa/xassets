//
//  AssetsKit+extension.swift
//  Pods
//
//  Created by Lance Zhu on 2015-08-24.
//
//

import Foundation

extension AssetsKit {
    
    private class func drawing(#draw: Void -> Void, sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        
        // enter the size of the original drawing
        
        let rect = CGRect(origin: CGPointZero, size: sizeToFit ?? drawingSize)
        UIGraphicsBeginImageContextWithOptions(sizeToFit ?? drawingSize, opaque ?? true, imageContextScale ?? 0)
        
        if let backgroundColor = backgroundColor {
            backgroundColor.set()
            UIRectFill(rect)
        }
        
        draw()
        
        let imageOfEtcIcon = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return imageOfEtcIcon
    }
    
    /// Copy this function
    internal class func x_imageOfEtcIcon(sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        
        return self.drawing(
            draw: {
                // calculate scaleX and scaleY based on size
                let scaledX: CGFloat = (sizeToFit ?? drawingSize).width / drawingSize.width
                let scaledY: CGFloat = (sizeToFit ?? drawingSize).height / drawingSize.height
                // change this function to the appropriate drawing function
                AssetsKit.drawEtcIcon(scaleX: scaledX, scaleY: scaledY)
            },
            sizeToFit: sizeToFit,
            drawingSize: drawingSize,
            backgroundColor: backgroundColor,
            opaque: opaque,
            imageContextScale: imageContextScale
        )
    }
    
    internal class func x_imageOfCarIcon(sizeToFit: CGSize?, drawingSize: CGSize, backgroundColor: UIColor? = nil, opaque: Bool? = true, imageContextScale: CGFloat? = 0) -> UIImage {
        
        return self.drawing(
            draw: {
                // calculate scaleX and scaleY based on size
                let scaledX: CGFloat = (sizeToFit ?? drawingSize).width / drawingSize.width
                let scaledY: CGFloat = (sizeToFit ?? drawingSize).height / drawingSize.height
                // change this function to the appropriate drawing function
                AssetsKit.drawCarIcon(scaleX: scaledX, scaleY: scaledY)
            },
            sizeToFit: sizeToFit,
            drawingSize: drawingSize,
            backgroundColor: backgroundColor,
            opaque: opaque,
            imageContextScale: imageContextScale
        )
    }
}