//
//  SendingVC.swift
//  DataBetweenClass
//
//  Created by sam on 4/2/18.
//  Copyright © 2018 patrick. All rights reserved.
//

import Foundation
import UIKit

//protocol DataDelegate {
//    var userInputText : String? {get set}
//    func showUserText(inputText:String)
//}
class SendingVC : UIViewController {
    
    var delegateToSendingVC : DataDelegate?
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func sendButton(_ sender: Any) {
        print("textView got text : \(textView.text)")
        DataModel.Asingle.userInputText = textView.text
        DataModel.typeUserInputText = textView.text
        DataModeClassType.typeUserInputText = textView.text
        
        print("DataModel.Asingle.userInputText got text : \(DataModel.Asingle.userInputText)")
        delegateToSendingVC?.showUserText(inputText: textView.text)
        delegateToSendingVC?.userInputText = textView.text
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        self.title = "SendingVC"
        print("^^^ sendingVC in viewDidLoad, delegate is \(delegateToSendingVC)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("^^^ sendingVC in viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("^^^ sendingVC in viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("^^^ sendingVC in viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("^^^ sendingVC in viewDidDisappear")
    }
    
    deinit {
        print("^^^ sedingVC got deinit")
    }
}




