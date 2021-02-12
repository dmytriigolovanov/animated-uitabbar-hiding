//
//  ViewController.swift
//  animated-uitabbar-hiding-example
//
//  Created by Dmytrii Golovanov on 12.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func show() {
        tabBarController?.setTabBarHidden(false, animated: true)
    }
    
    @IBAction func hide() {
        tabBarController?.setTabBarHidden(true, animated: true)
    }
}

