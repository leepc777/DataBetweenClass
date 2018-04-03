//
//  SendingVC.swift
//  DataBetweenClass
//
//  Created by sam on 4/2/18.
//  Copyright © 2018 patrick. All rights reserved.
//

import Foundation
import UIKit

class SendingVC : UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    
    @IBAction func sendButton(_ sender: Any) {
        print("textField got text : \(textField.text)")
        DataModel.Asingle.userInputText = textField.text
        print("DataModel.Asingle.userInputText got text : \(DataModel.Asingle.userInputText)")
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        self.title = "SendingVC"
    }
}
