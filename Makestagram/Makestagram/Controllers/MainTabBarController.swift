//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    
    let photoHelper = MGPhotoHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in 
            print("handle image")
        }
        
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == Constants.Tags.photoTag {
            photoHelper.presentActionSheet(from: self)
            
            return false
        } else {
            return true
        }
    }
}
