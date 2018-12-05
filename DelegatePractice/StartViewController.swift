//
//  ViewController.swift
//  DelegatePractice
//
//  Created by Rustam Shorov on 03.12.2018.
//  Copyright © 2018 Rustam Shorov. All rights reserved.
//

import UIKit

class StartViewController: UIViewController{

    @IBOutlet weak var imageOfChoosedMeal: UIImageView!
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        if let middleVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "middleVC") as? MiddleViewController {
            middleVC.middleDelegate = self
            navigationController?.pushViewController(middleVC, animated: true)
        }
    }
}

extension StartViewController: LastVCDelegate {
    func fillImageViewWithChoosedMeal(_ mealName: String) {
        self.imageOfChoosedMeal.image = UIImage(named: mealName)
    }
}


