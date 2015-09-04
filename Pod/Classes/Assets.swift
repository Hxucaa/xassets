//
//  Asset.swift
//  Pods
//
//  Created by Lance Zhu on 2015-08-24.
//  Copyright (c) 2015 ZenChat. All rights reserved.
//

import Foundation
import UIKit

public enum Asset {
    case FemaleIcon(scale: CGFloat)
    case MaleIcon(scale: CGFloat)
    case CakeIcon(scale: CGFloat)
    case FlameIcon(scale: CGFloat)
    case CarIcon(size: CGSize?, backgroundColor: UIColor?, opaque: Bool?, imageContextScale: CGFloat?)
    case EtcIcon(size: CGSize?, backgroundColor: UIColor?, opaque: Bool?, imageContextScale: CGFloat?)
    case WTGButtonTapped(scale: CGFloat)
    case WTGButtonUntapped(scale: CGFloat)
    case PriceTag(scale: CGFloat)
    case HomeButtonTapped(scale: CGFloat)
    case HomeButtonUntapped(scale: CGFloat)
    case NearbyButtonTapped(scale: CGFloat)
    case NearbyButtonUntapped(scale: CGFloat)
    case ChatButtonTapped(scale: CGFloat)
    case ChatButtonUntapped(scale: CGFloat)
    case ProfileButtonTapped(scale: CGFloat)
    case ProfileButtonUntapped(scale: CGFloat)
    case NavBarSearchButton(scale: CGFloat)
    case NavbarFilterButton(scale: CGFloat)
    
    /// Retrieve the drawing in `UIImage` for the `Asset`.
    internal func image() -> UIImage {
        
        switch(self){
        case let .FemaleIcon(scale):
            return AssetsKit.imageOfFemaleIcon(scaleX: scale)
        case let .MaleIcon(scale):
            return AssetsKit.imageOfMaleIcon(scaleX
                : scale)
        case let .CakeIcon(scale):
            return AssetsKit.imageOfCakeIcon(scaleX: scale)
        case let .FlameIcon(scale):
            return AssetsKit.imageOfFlameIcon(scaleX: scale)
        case let .CarIcon(size, backgroundColor, opaque, imageContextScale):
            return AssetsKit.x_imageOfCarIcon(size, drawingSize: drawingSize(), backgroundColor: backgroundColor, opaque: opaque, imageContextScale: imageContextScale)
        case let .EtcIcon(size, backgroundColor, opaque, imageContextScale):
            return AssetsKit.x_imageOfEtcIcon(size, drawingSize: drawingSize(), backgroundColor: backgroundColor, opaque: opaque, imageContextScale: imageContextScale)
        case let .WTGButtonTapped(scaleX):
            return AssetsKit.imageOfWTGButtonTapped(scaleX: scaleX)
        case let .WTGButtonUntapped(scaleX):
            return AssetsKit.imageOfWTGButtonUntapped(scaleX: scaleX)
        case let .PriceTag(scaleX):
            return AssetsKit.imageOfPriceTagBackground(scaleX: scaleX)
        case let .HomeButtonTapped(scaleX):
            return AssetsKit.imageOfHomeButtonTapped(scaleX: scaleX)
        case let .HomeButtonUntapped(scaleX):
            return AssetsKit.imageOfHomeButtonUntapped(scaleX: scaleX)
        case let .NearbyButtonTapped(scaleX):
            return AssetsKit.imageOfNearbyButtonTapped(scaleX: scaleX)
        case let .NearbyButtonUntapped(scaleX):
            return AssetsKit.imageOfNearbyButtonUntapped(scaleX: scaleX)
        case let .ChatButtonTapped(scaleX):
            return AssetsKit.imageOfChatButtonTapped(scaleX: scaleX)
        case let .ChatButtonUntapped(scaleX):
            return AssetsKit.imageOfChatButtonUntapped(scaleX: scaleX)
        case let .ProfileButtonTapped(scaleX):
            return AssetsKit.imageOfProfileButtonTapped(scaleX: scaleX)
        case let .ProfileButtonUntapped(scaleX):
            return AssetsKit.imageOfProfileButtonUntapped(scaleX: scaleX)
        case let .NavBarSearchButton(scaleX):
            return AssetsKit.imageOfNavBarSearchButton(scaleX: scaleX)
        case let .NavbarFilterButton(scaleX):
            return AssetsKit.imageOfNavbarFilterButton(scaleX: scaleX)
        }
    }
    
    /// Retrieve the cache key for the `Asset`.
    internal func cacheKey() -> String {
        
        switch(self){
        case let .FemaleIcon(scaleX):
            return "FemaleIcon\(scaleX)"
        case let .MaleIcon(scaleX):
            return "MaleIcon\(scaleX)"
        case let .CakeIcon(scaleX):
            return "CakeIcon\(scaleX)"
        case let .FlameIcon(scaleX):
            return "FlameIcon\(scaleX)"
        case let .CarIcon(size, backgroundColor, opaque, imageContextScale):
            return "CarIcon|\(size)|\(backgroundColor)|\(opaque)|\(imageContextScale)"
        case let .EtcIcon(size, backgroundColor, opaque, imageContextScale):
            return "EtcIcon|\(size)|\(backgroundColor)|\(opaque)|\(imageContextScale)"
        case let .WTGButtonTapped(scaleX):
            return "WTGButtonTapped\(scaleX)"
        case let .WTGButtonUntapped(scaleX):
            return "WTGButtonUntapped\(scaleX)"
        case let .PriceTag(scaleX):
            return "PriceTag\(scaleX)"
        case let .HomeButtonTapped(scaleX):
            return "HomeButtonTapped\(scaleX)"
        case let .HomeButtonUntapped(scaleX):
            return "HomeButtonUntapped\(scaleX)"
        case let .NearbyButtonTapped(scaleX):
            return "NearbyButtonTapped\(scaleX)"
        case let .NearbyButtonUntapped(scaleX):
            return "NearbyButtonUntapped\(scaleX)"
        case let .ChatButtonTapped(scaleX):
            return "ChatButtonTapped\(scaleX)"
        case let .ChatButtonUntapped(scaleX):
            return "ChatButtonUntapped\(scaleX)"
        case let .ProfileButtonTapped(scaleX):
            return "ProfileButtonTapped\(scaleX)"
        case let .ProfileButtonUntapped(scaleX):
            return "ProfileButtonUntapped\(scaleX)"
        case let .NavBarSearchButton(scaleX):
            return "NavBarSearchButton\(scaleX)"
        case let .NavbarFilterButton(scaleX):
            return "NavbarFilterButton\(scaleX)"
        }
    }
    
    internal func drawingSize() -> CGSize {
        switch(self) {
        case .CarIcon:
            return CGSizeMake(31, 24)
        case .EtcIcon:
            return CGSizeMake(36, 40)
        default:
            return CGSizeMake(0, 0)
        }
    }
}