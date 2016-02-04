//
//  ViewController.swift
//  PhotoApp
//
//  Created by Nikolay Shubenkov on 03/02/16.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit
import CZPhotoPickerController

class ViewController: UIViewController {

    var photoController:CZPhotoPickerController?
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func takePhotoPressed(sender: AnyObject) {
        
        photoController = CZPhotoPickerController(completionBlock: { (picker:UIImagePickerController!, info:[NSObject : AnyObject]!) -> Void in
            
            let castedInfo = info as! NSDictionary
            self.imageView.image = castedInfo[UIImagePickerControllerOriginalImage] as! UIImage
            self.dismissViewControllerAnimated(true, completion: nil)
            
        })
        
        self.photoController?.presentFromViewController(self)
    }
}

