//
//  Constants.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/9/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation

struct Constants {
    struct Segue {
        static let toCreateUsername = "toCreateUsername"
    }
    
    struct UserDefaults {
        static let currentUser = "currentUser"
    }
    
    struct Tags {
        static let photoTag = 1
    }
    
    struct Reference {
        static let posts = "posts"
        static let images = "images"
        static let users = "users"
        static let postLikes = "postLikes"
    }
    
    struct Dict {
        static let image_url = "image_url"
        static let image_height = "image_height"
        static let created_at = "created_at"
        static let username = "username"
        static let like_count = "like_count"
        static let poster = "poster"
        static let uid = "uid"
    }
    
    struct Cell {
        static let postImageCell = "PostImageCell"
        static let postHeaderCell = "PostHeaderCell"
        static let postActionCell = "PostActionCell"
        static let cellsInSection = 3
    }
}
