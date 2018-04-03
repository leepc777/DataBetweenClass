//
//  ReceivingVC.swift
//  DataBetweenClass
//
//  Created by sam on 4/2/18.
//  Copyright © 2018 patrick. All rights reserved.
//

import UIKit

class ReceivingVC : UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        print("$$$ viewDidAppear")
        
        textView.text = DataModel.Asingle.userInputText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("$$$ viewWillAppear")
        textView.text = DataModel.Asingle.userInputText
        
    }
    
}

