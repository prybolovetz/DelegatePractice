//
//  LastViewController.swift
//  DelegatePractice
//
//  Created by Rustam Shorov on 03.12.2018.
//  Copyright © 2018 Rustam Shorov. All rights reserved.
//

import UIKit

protocol LastVCDelegate {
    func fillImageViewWithChoosedMeal(_ mealName: String)
}

class LastViewController: UIViewController {
    var delegate: LastVCDelegate?
    
    @IBAction func chooseMealButton(_ sender: UIButton) {
        if let mealName = sender.currentTitle {
            delegate?.fillImageViewWithChoosedMeal(mealName)
            navigationController?.popToRootViewController(animated: true)
        }
    }
}
