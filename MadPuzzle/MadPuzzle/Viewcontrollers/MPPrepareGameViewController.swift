//
//  MPPrepareGameViewController.swift
//  MadPuzzle
//
//  Created by Truong Le on 6/12/17.
//  Copyright © 2017 Truong Le. All rights reserved.
//

import UIKit

class MPPrepareGameViewController: MPBaseViewController {

    fileprivate func presentPhotosPicker() {
        let imagePicker:UIImagePickerController = UIImagePickerController()
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MPPrepareGameViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}
