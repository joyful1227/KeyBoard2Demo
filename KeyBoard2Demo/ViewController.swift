//
//  ViewController.swift
//  KeyBoard2Demo
//
//  Created by Joy on 2019/8/25.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


    
}
extension ViewController: UITextFieldDelegate {
    
    
    //當點擊view任何喔一處鍵盤收起
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    //按鍵盤上的return鍵可以換
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       let nextTag = textField.tag+1
        
        if let nextResponder = textField.superview?.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
//        if textField == accountTextField {
//           passwordTextField.becomeFirstResponder()
//        }else {
//            textField.endEditing(true)
//        }
        
        return true
    }
}
