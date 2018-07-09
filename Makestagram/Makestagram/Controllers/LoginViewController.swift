//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Binjia Chen on 7/9/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

typealias FIRUser = FirebaseAuth.User

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
        guard let authUI = FUIAuth.defaultAuthUI() else { return }
        
        authUI.delegate = self
        
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
    
    
}

extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
        }
        
        print("handle user signup / login")
    }
}
