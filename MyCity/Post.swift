//
//  Post.swift
//  MyCity
//
//  Created by D'Andre Ealy on 1/3/16.
//  Copyright © 2016 D'Andre Ealy. All rights reserved.
//

import Foundation


class Post {
    private var imagePath:String
    private var title:String
    private var postDescription:String
    
    init(imagePath:String, title:String, postDescription:String){
        self.imagePath = imagePath
        self.title = title
        self.postDescription = postDescription
    }
}