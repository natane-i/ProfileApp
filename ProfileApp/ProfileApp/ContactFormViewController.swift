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
    let inactiveColor = UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    let mainColor = UIColor(red: 59.0/255.0, green: 53.0/255.0, blue: 50.0/255.0, alpha: 1.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resetLabel()
    }
    
    func resetLabel() {
        nameTextField.text = ""
        mailTextField.text = ""
        messageTextField.text = ""
        
        confirmBtn.backgroundColor = inactiveColor
        clickCount = 0
    }
    
    // 画面が表示される直前に行う処理を指定
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        resetLabel()
    }
    
    // 画面をタッチするとテキストフィールドのキーボードが閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        // テキストフィールドに入力がされているかの判定
        if nameTextField.text?.isEmpty == true || mailTextField.text?.isEmpty == true || messageTextField.text?.isEmpty == true {
            clickCount = 0
        } else {
            clickCount += 1
        }
        
        // ボタンの色の変更とセグエの準備
        if clickCount == 1 {
            confirmBtn.backgroundColor = mainColor
        } else if clickCount >= 2 {
            performSegue(withIdentifier: "toConfirmSegue", sender: nil)
        }
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
