//
//  MPButtons.swift
//  MadPuzzle
//
//  Created by Truong Le on 6/12/17.
//  Copyright © 2017 Truong Le. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class MPButton: UIButton {
    @IBInspectable var connerRadius:CGFloat = 3.0 {didSet{
            self.layer.cornerRadius = connerRadius
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 3.0 {didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.black {didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    /// Setup
    private func setup() {
        self.layer.cornerRadius = connerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
}
