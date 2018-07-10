//
//  Post.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import FirebaseDatabase.FIRDataSnapshot

class Post {
    
    // MARK: - Properties
    
    var key: String?
    let imageURL: String
    let imageHeight: CGFloat
    let creationDate: Date
    
    // MARK: - Init
    
    init(imageURL: String, imageHeight: CGFloat) {
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date()
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict[Constants.Dict.image_url] as? String,
            let imageHeight = dict[Constants.Dict.image_height] as? CGFloat,
            let createdAgo = dict[Constants.Dict.created_at] as? TimeInterval
            else { return nil}
        
        self.key = snapshot.key
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
    }
    
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970
        
        return [Constants.Dict.image_url : imageURL,
                Constants.Dict.image_height : imageHeight,
                Constants.Dict.created_at : createdAgo]
    }
}
