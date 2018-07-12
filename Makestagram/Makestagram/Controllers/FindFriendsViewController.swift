//
//  FindFriendsViewController.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class FindFriendsViewController: UIViewController {
    
    // MARK: - Properties
    
    var users = [User]()
    
    // MARK: - Subviews
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 71
    }
}

// MARK: - UITableViewDataSource

extension FindFriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FindFriendsCell") as! FindFriendsCell
        configure(cell: cell, atIndexPath: indexPath)
        
        return cell
    }
    
    func configure(cell: FindFriendsCell, atIndexPath indexPath: IndexPath) {
        let user = users[indexPath.row]
        
        cell.usernameLabel.text = user.username
        cell.followButton.isSelected = user.isFollowed
    }
}
