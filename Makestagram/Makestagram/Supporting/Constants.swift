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
    }
    
    struct Dict {
        static let image_url = "image_url"
        static let image_height = "image_height"
        static let created_at = "created_at"
    }
}
