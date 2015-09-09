//
//  EtcIconViewController.swift
//  XAssets
//
//  Created by Connor Wang on 8/11/15.
//  Copyright (c) 2015 ZenChat Interactive Inc. All rights reserved.
//

import UIKit
import XAssets
import ReactiveCocoa

class CarIconViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        imageView.rac_image <~ AssetFactory.getImage(Asset.CarIcon(size: imageView.frame.size, backgroundColor: nil, opaque: nil, imageContextScale: nil, pressed: false, shadow: false))
            |> map { Optional<UIImage>($0) }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}