//
//  PostCell.swift
//  MyCity
//
//  Created by Dandre Ealy on 1/3/16.
//  Copyright © 2016 D'Andre Ealy. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postimg: UIImageView!
    @IBOutlet weak var titleTable: UILabel!
    @IBOutlet weak var descLabel: UILabel! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        postimg.layer.cornerRadius = postimg.frame.size.width / 2
        postimg.clipsToBounds = true 
    }
    func configCell(post: Post){
        titleTable.text = post.title
        descLabel.text = post.postDescription
        postimg.image = DataService.instance.imageForPath(post.imagePath)
    }
   
}
