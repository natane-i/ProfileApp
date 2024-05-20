//
//  SendViewController.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class SendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    var nameText = ""
    var mailText = ""
    var messageText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nameTextField.text = nameText
        self.mailTextField.text = mailText
        self.messageTextField.text = messageText
        
    }
    


}
