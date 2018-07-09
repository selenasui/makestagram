//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/9/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    */
    
    // MARK: - IBActions
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("login button tapped")
    }
    
    
}
