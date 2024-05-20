//
//  ContactFormViewController.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class ContactFormViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var confirmBtn: UIButton!
    
    var clickCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func confirmButton(_ sender: Any) {
        //        nameTextField.text = "井上　日菜多"
        //        mailTextField.text = "mail@contact.jp"
        //        messageTextField.text = "よろしくお願いします。"
        //
        //        clickCount += 1
        //
        //        if clickCount == 1 {
        //            confirmBtn.backgroundColor = .black
        //        } else if clickCount >= 2 {
//
//        clickCount += 1
//    }
//
//    if clickCount == 1 {
//        confirmBtn.backgroundColor = .black
//    } else if clickCount >= 2 {
        
//        if nameTextField.state.isEmpty ||  mailTextField.state.isEmpty || messageTextField.state.isEmpty {
//        } else {
            performSegue(withIdentifier: "toConfirmSegue", sender: nil)
//        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SendVC = segue.destination as? SendViewController {
            if let name = self.nameTextField.text, let mail = self.mailTextField.text, let message = self.messageTextField.text {
                SendVC.nameText = name
                SendVC.mailText = mail
                SendVC.messageText = message
            }
            
        }
    }
    
    
}
