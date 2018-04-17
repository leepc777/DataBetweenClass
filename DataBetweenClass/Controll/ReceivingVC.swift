//
//  ReceivingVC.swift
//  DataBetweenClass
//
//  Created by sam on 4/2/18.
//  Copyright © 2018 patrick. All rights reserved.
//


/*
 use delgate to pass data between classes
 delegator: sendingVC
 delegate: receivingVC
 
 1. define protocl: DataDelegate ( protocol can be defined in any .swift )
 2. delegator define a Protocol Type property
 3. delegator pass data by calling the protocol methods or protocol properties through the Protocol Type property created in step 2.
 4. set delegate as the delegate to delegator:
  delegate has to claim itself as the delegate to delegator.
 
 But the problem is how delegate know who is the delegator ?
 Here, delegator(senderingVC) trigger the Segue to delegate(receivingVC).
 So we can use segue.destination to identify the sendingVC.
 let sendingVC = segue.destination as! SendingVC
 sendingVC.delegateToSendingVC = self
 
 
 Use DataModel as global buffer to share data between multiple classes
 here I use SingleTon can Type Class. Both work.
*/
import UIKit

class ReceivingVC : UIViewController, DataDelegate {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        print("$$$ ReceivingVC at viewDidAppear")
        let sendingVC = SendingVC()
        sendingVC.delegateToSendingVC = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("$$$ ReceivingVC at viewWillAppear")
        textLabel.text = DataModel.Asingle.userInputText + DataModel.typeUserInputText + DataModeClassType.typeUserInputText
        
        //delegate displays Protocol property userInputText. This property is set in delegator
        textField.text = userInputText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSendingVC" {
            let sendingVC = segue.destination as! SendingVC
            sendingVC.delegateToSendingVC = self
            print("$$$ excute prepareForSegue to SendingVC",self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("$$$ ReceivingVC in viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("$$$ ReceivingVC in viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("$$$ ReceivingVC in viewDidDisappeawr")
    }

    deinit {
        print("$$$ ReceivingVC got deinit")
    }

    
    // implement protocol property and method.
    var userInputText: String?

    func showUserText(inputText: String) {
        textView.text = inputText
    }
}

