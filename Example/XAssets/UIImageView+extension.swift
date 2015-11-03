//
//  UIImageView+extension.swift
//  XAssets
//
//  Created by Lance Zhu on 2015-09-03.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import Foundation
import ReactiveCocoa
import UIKit

private struct AssociationKey {
    static var image: UInt8 = 9
}

// lazily creates a gettable associated property via the given factory
private func lazyAssociatedProperty<T: AnyObject>(host: AnyObject, key: UnsafePointer<Void>, factory: ()->T) -> T {
    return objc_getAssociatedObject(host, key) as? T ?? {
        let associatedProperty = factory()
        objc_setAssociatedObject(host, key, associatedProperty, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        return associatedProperty
    }()
}

private func lazyMutableProperty<T>(host: AnyObject, key: UnsafePointer<Void>, setter: T -> (), getter: () -> T) -> MutableProperty<T> {
    return lazyAssociatedProperty(host, key: key) {
        let property = MutableProperty<T>(getter())
        property.producer
            .startWithNext { next in
                setter(next)
            }
//            .start(next: { newValue in
//                
//                setter(newValue)
//            })
        return property
    }
}

extension UIImageView {
    public var rac_image: MutableProperty<UIImage?> {
        return lazyMutableProperty(self, key: &AssociationKey.image, setter: { self.image = $0 }, getter: { self.image })
    }
}