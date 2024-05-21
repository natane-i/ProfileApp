//
//  AfterSendingViewController.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class AfterSendingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToTopButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
