//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/11/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    
    // MARK: - Properties
    
    weak var delegate: PostActionCellDelegate?
    
    static let height: CGFloat = 46
    
    // MARK: - Subviews
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    // MARK: - Cell Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBActions
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }
    
}
