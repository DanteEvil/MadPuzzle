//
//  MPImageEditor.swift
//  MadPuzzle
//
//  Created by Truong Le on 6/11/17.
//  Copyright © 2017 Truong Le. All rights reserved.
//

import Foundation
import UIKit

class MPImageEditor {
    
    static func slice(image:UIImage, into horizontalTiles:Int, and verticalTiles:Int) -> [UIImage] {
        let width: CGFloat
        let height: CGFloat
        
        switch image.imageOrientation {
        case .left, .leftMirrored, .right, .rightMirrored:
            width = image.size.height
            height = image.size.width
        default:
            width = image.size.width
            height = image.size.height
        }
        
        let tileWidth = Int(width / CGFloat(horizontalTiles))
        let tileHeight = Int(height / CGFloat(verticalTiles))
        
        let scale = Int(image.scale)
        var images = [UIImage]()
        
        let cgImage = image.cgImage!
        
        var y = 0
        for _ in 0 ..< verticalTiles {
            var x = 0
            for _ in 0 ..< horizontalTiles {
                let origin = CGPoint(x: x * scale, y: y * scale)
                let size = CGSize(width: tileWidth * scale, height: tileHeight * scale)
                let tileCgImage = cgImage.cropping(to: CGRect(origin: origin, size: size))!
                images.append(UIImage(cgImage: tileCgImage, scale: image.scale, orientation: image.imageOrientation))
                x += tileWidth
            }
            y += tileHeight
        }
        return images
    }
}
