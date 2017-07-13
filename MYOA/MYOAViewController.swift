//
//  MYOAViewController.swift
//  MYOA
//
//  Created by Yu-Jen Chang on 7/12/17.
//  Copyright © 2017 Yu-Jen Chang. All rights reserved.
//

import UIKit

class MYOAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(startOver))
    }
    
    func startOver() {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
    
    // whenever OS de-allocate any swift class, a de-initializer is called.
    // So when a viewController is de-allocated (slide off the screen to the right), deinit is called
    deinit {
        print("VC is deallocated.")
    }

}

