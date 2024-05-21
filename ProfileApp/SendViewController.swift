//
//  SendViewController.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var mailTextLabel: UILabel!
    @IBOutlet weak var messageTextLabel: UILabel!
    
    
    
    var nameText = ""
    var mailText = ""
    var messageText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nameTextLabel.text = nameText
        self.mailTextLabel.text = mailText
        self.messageTextLabel.text = messageText

    }
    
}
