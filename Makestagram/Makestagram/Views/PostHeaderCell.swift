//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/11/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let height: CGFloat = 54
    
    // MARK: - Subviews
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    // MARK: - Cell Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBActions
    
    @IBAction func optionsButtonTapped(_ sender: Any) {
        print("options button tapped")
    }
    
}
