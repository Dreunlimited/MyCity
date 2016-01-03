//
//  AddPostVC.swift
//  MyCity
//
//  Created by Dandre Ealy on 1/3/16.
//  Copyright © 2016 D'Andre Ealy. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var postImg: UIImageView!
    @IBOutlet var titleField: UITextField!
    @IBOutlet var descField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

  

    @IBAction func makePostButonPressed(sender: UIButton!) {
        if let title = titleField.text, let desc = descField.text, let img = postImg.image{
            let imagePath = DataService.instance.saveImageAndCreatePath(img)
            let post = Post(imagePath: imagePath, title: title, postDescription: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancelPostButotnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addPicButtonPressed(sender: AnyObject) {
        sender.setTitle("", forState: .Normal)
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        //hides picker after image is pressed
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
        
    }

}
