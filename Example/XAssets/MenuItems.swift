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
        ("Profile Button", "ToProfileButton"),
        ("Home Button", "ToHomeButton"),
        ("Nearby Button", "ToNearbyButton"),
        ("Chat Button", "ToChatButton"),
        ("Price Icon", "ToPriceIcon"),
        ("Serach Button", "ToSearchButton"),
        ("Filter Button", "ToFilterButton"),
        ("Share Button", "ToShareButton"),
        ("Venus Label", "ToVenusLabel"),
        ("Mars Label", "ToMarsLabel"),
        ("Join Button", "ToJoinButton")
    ]
}