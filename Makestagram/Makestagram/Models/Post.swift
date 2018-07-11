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
    var likeCount: Int
    let poster: User
    var isLiked = false
    
    // MARK: - Init
    
    init(imageURL: String, imageHeight: CGFloat) {
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date()
        
        self.likeCount = 0
        self.poster = User.current
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict[Constants.Dict.image_url] as? String,
            let imageHeight = dict[Constants.Dict.image_height] as? CGFloat,
            let createdAgo = dict[Constants.Dict.created_at] as? TimeInterval,
        
            let likeCount = dict[Constants.Dict.like_count] as? Int,
            let userDict = dict[Constants.Dict.poster] as? [String : Any],
            let uid = userDict[Constants.Dict.uid] as? String,
            let username = userDict[Constants.Dict.username] as? String
            else { return nil }
        
        self.key = snapshot.key
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
        
        self.likeCount = likeCount
        self.poster = User(uid: uid, username: username)
    }
    
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970
        let userDict = [Constants.Dict.uid : poster.uid,
                        Constants.Dict.username : poster.username]
        
        return [Constants.Dict.image_url : imageURL,
                Constants.Dict.image_height : imageHeight,
                Constants.Dict.created_at : createdAgo,
                Constants.Dict.like_count : likeCount,
                Constants.Dict.poster : userDict]
    }
}
