//
//  ImageCollectionViewCell.swift
//  MadPuzzle
//
//  Created by Truong Le on 6/14/17.
//  Copyright © 2017 Truong Le. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

 @IBOutlet private weak var presentImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func populate(image img:UIImage) {
        DispatchQueue.main.async {
            self.presentImageView.image = img
        }
    }
}
