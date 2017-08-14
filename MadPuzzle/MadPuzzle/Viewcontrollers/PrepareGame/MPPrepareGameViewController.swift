//
//  MPPrepareGameViewController.swift
//  MadPuzzle
//
//  Created by Truong Le on 6/12/17.
//  Copyright © 2017 Truong Le. All rights reserved.
//

import UIKit

class MPPrepareGameViewController: MPBaseViewController {
    @IBOutlet weak var imageListCollectionView: UICollectionView!
    @IBOutlet weak var presentSelectedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageListCollectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: Bundle.main),
                                         forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: UIImagePickerControllerDelegate
extension MPPrepareGameViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}

//MARK: Actions
extension MPPrepareGameViewController {
    fileprivate func presentPhotosPicker() {
        let imagePicker:UIImagePickerController = UIImagePickerController()
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
}

//MARK: UICollectionViewDelegate
extension MPPrepareGameViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.populate(image: UIImage(named:String(indexPath.row+1))!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height
        return CGSize(width: 2/3*height, height: height)
    }
}

