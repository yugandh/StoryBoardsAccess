//
//  ViewController.swift
//  StoryBoardsAccess
//
//  Created by Yugandhar Kommineni on 11/19/18.
//  Copyright © 2018 Yugandhar Kommineni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let loginViewController = LoginViewController.instantiateViewController(withIdentifier: LoginViewController.identifier, fromStoryboard: .login) as? LoginViewController else {
            return
        }
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}

