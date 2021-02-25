//
//  MapSnapshotter.swift
//  Reef Site Maps
//
//  Created by alex on 2/24/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class MapSnapshotter: MapViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mapPreviewImageView: UIImageView!
    
    let imageCache = NSCache<NSString, UIImage>()
    let imageCacheKey: NSString = "CachedMapSnapshot" // this should be object specific name

    private func cacheImage(iamge: UIImage) {
        imageCache.setObject(iamge, forKey: imageCacheKey)
    }

    private func cachedImage() -> UIImage? {
        return imageCache.object(forKey: imageCacheKey)
    }
    
    func start(completionHandler: @escaping MKMapSnapshotter.CompletionHandler)
    {
        
    }
    
    
    
    func cancel(){
        
    }
}

