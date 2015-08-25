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
    case CarIcon(scale: CGFloat)
    case EtcIcon(scale: CGFloat?, backgroundColor: UIColor?, opaque: Bool?, imageContextScale: CGFloat?)
    case WTGButtonTapped(scale: CGFloat)
    case WTGButtonUntapped(scale: CGFloat)
    case PriceTag(scale: CGFloat, tag: String)
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
            return AssetsKit.imageOfFemaleIcon(scale: scale)
        case let .MaleIcon(scale):
            return AssetsKit.imageOfMaleIcon(scale: scale)
        case let .CakeIcon(scale):
            return AssetsKit.imageOfCakeIcon(scale: scale)
        case let .FlameIcon(scale):
            return AssetsKit.imageOfFlameIcon(scale: scale)
        case let .CarIcon(scale):
            return AssetsKit.imageOfCarIcon(scale: scale)
        case let .EtcIcon(scale, backgroundColor, opaque, imageContextScale):
            return AssetsKit.x_imageOfEtcIcon(scale: scale, backgroundColor: backgroundColor, opaque: opaque, imageContextScale: imageContextScale)
        case let .WTGButtonTapped(scale):
            return AssetsKit.imageOfWTGButtonTapped(scale: scale)
        case let .WTGButtonUntapped(scale):
            return AssetsKit.imageOfWTGButtonUntapped(scale: scale)
        case let .PriceTag(scale, tag):
            return AssetsKit.imageOfPriceTagBackground(scale: scale)
        case let .HomeButtonTapped(scale):
            return AssetsKit.imageOfHomeButtonTapped(scale: scale)
        case let .HomeButtonUntapped(scale):
            return AssetsKit.imageOfHomeButtonUntapped(scale: scale)
        case let .NearbyButtonTapped(scale):
            return AssetsKit.imageOfNearbyButtonTapped(scale: scale)
        case let .NearbyButtonUntapped(scale):
            return AssetsKit.imageOfNearbyButtonUntapped(scale: scale)
        case let .ChatButtonTapped(scale):
            return AssetsKit.imageOfChatButtonTapped(scale: scale)
        case let .ChatButtonUntapped(scale):
            return AssetsKit.imageOfChatButtonUntapped(scale: scale)
        case let .ProfileButtonTapped(scale):
            return AssetsKit.imageOfProfileButtonTapped(scale: scale)
        case let .ProfileButtonUntapped(scale):
            return AssetsKit.imageOfProfileButtonUntapped(scale: scale)
        case let .NavBarSearchButton(scale):
            return AssetsKit.imageOfNavBarSearchButton(scale: scale)
        case let .NavbarFilterButton(scale):
            return AssetsKit.imageOfNavbarFilterButton(scale: scale)
        }
    }
    
    /// Retrieve the cache key for the `Asset`.
    internal func cacheKey() -> String {
        
        switch(self){
        case let .FemaleIcon(scale):
            return "FemaleIcon\(scale)"
        case let .MaleIcon(scale):
            return "MaleIcon\(scale)"
        case let .CakeIcon(scale):
            return "CakeIcon\(scale)"
        case let .FlameIcon(scale):
            return "FlameIcon\(scale)"
        case let .CarIcon(scale):
            return "CarIcon\(scale)"
        case let .EtcIcon(scale, backgroundColor, opaque, imageContextScale):
            return "EtcIcon|\(scale)|\(backgroundColor)|\(opaque)|\(imageContextScale)"
        case let .WTGButtonTapped(scale):
            return "WTGButtonTapped\(scale)"
        case let .WTGButtonUntapped(scale):
            return "WTGButtonUntapped\(scale)"
        case let .PriceTag(scale, tag):
            return "PriceTag\(scale)\(tag)"
        case let .HomeButtonTapped(scale):
            return "HomeButtonTapped\(scale)"
        case let .HomeButtonUntapped(scale):
            return "HomeButtonUntapped\(scale)"
        case let .NearbyButtonTapped(scale):
            return "NearbyButtonTapped\(scale)"
        case let .NearbyButtonUntapped(scale):
            return "NearbyButtonUntapped\(scale)"
        case let .ChatButtonTapped(scale):
            return "ChatButtonTapped\(scale)"
        case let .ChatButtonUntapped(scale):
            return "ChatButtonUntapped\(scale)"
        case let .ProfileButtonTapped(scale):
            return "ProfileButtonTapped\(scale)"
        case let .ProfileButtonUntapped(scale):
            return "ProfileButtonUntapped\(scale)"
        case let .NavBarSearchButton(scale):
            return "NavBarSearchButton\(scale)"
        case let .NavbarFilterButton(scale):
            return "NavbarFilterButton\(scale)"
        }
    }
    
}