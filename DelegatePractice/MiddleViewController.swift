//
//  MiddleViewController.swift
//  DelegatePractice
//
//  Created by Rustam Shorov on 03.12.2018.
//  Copyright © 2018 Rustam Shorov. All rights reserved.
//

import UIKit


class MiddleViewController: UIViewController{
    
    var middleDelegate: LastVCDelegate?
    
    @IBAction func chooseMealButton(_ sender: UIButton) {
        
        if let lastVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "lastVC") as? LastViewController {
            
            lastVC.delegate = self.middleDelegate
            navigationController?.pushViewController(lastVC, animated: true)
            
        }
    }
    
}
