//
//  EtcIconViewController.swift
//  XAssets
//
//  Created by Lance Zhu on 8/11/15.
//  Copyright (c) 2016 Lance Zhu. All rights reserved.
//

import UIKit
import XAssets


class MaleIconViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        imageView.image = Asset.MaleIcon(size: imageView.frame.size, backgroundColor: nil, opaque: nil, imageContextScale: nil, pressed: false, shadow: false).image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}