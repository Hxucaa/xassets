//
//  MenuItems.swift
//  XAssets
//
//  Created by Lance Zhu on 2015-08-04.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import Foundation

public final class MenuItems {
    
    public typealias Entry = (name: String, segue: String)
    public var items: [Entry] {
        return _items
    }
    
    
    /**
    YOU ONLY HAVE TO ADD NEW ITEM AT BELOW.
    */
    
    
    /// A collection of items for table view. 
    /// The name of item to be displayed and the segue identifier for navigating to the next controller.
    private let _items: [Entry] = [
        ("Male Icon", "ToMaleIcon"),
        ("Female Icon", "ToFemaleIcon"),
        ("Cake Icon", "ToCakeIcon"),
        ("Flame Icon", "ToFlameIcon"),
        ("Car Icon", "ToCarIcon"),
        ("Etc Icon", "ToEtcIcon"),
        ("WTG Button Tapped", "ToWTGButtonTapped"),
        ("WTG Button Untapped", "ToWTGButtonUntapped"),
        ("Profile Button Tapped", "ToProfileButtonTapped"),
        ("Profile Button Untapped", "ToProfileButtonUntapped"),
        ("Home Button Tapped", "ToHomeButtonTapped"),
        ("Home Button Untapped", "ToHomeButtonUntapped"),
        ("Nearby Button Tapped", "ToNearbyButtonTapped"),
        ("Nearby Button Untapped", "ToNearbyButtonUntapped"),
        ("Chat Button Tapped", "ToChatButtonTapped"),
        ("Chat Button Untapped", "ToChatButtonUntapped"),
        ("Price Tag Background", "ToPriceTagBackground")
    ]
}