//
//  UIViewController+Utils.swift
//  StoryBoardsAccess
//
//  Created by Yugandhar Kommineni on 11/19/18.
//  Copyright © 2018 Yugandhar Kommineni. All rights reserved.
//

import UIKit

extension UIViewController {

    static var identifier: String {
        get {
            return String(describing: self)
        }
    }

    static func initialViewControllerFromStoryboard(name: StoryBoardName) -> UIViewController? {
        let storyboard = UIStoryboard(name: name.rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController()
    }

    static func instantiateViewController(withIdentifier identifier: String, fromStoryboard name: StoryBoardName) -> UIViewController {
        let storyboard = UIStoryboard(name: name.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
