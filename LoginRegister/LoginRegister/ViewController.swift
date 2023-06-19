//
//  ViewController.swift
//  LoginRegister
//
//  Created by BTSL.SAJID on 18/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedPicker: UISegmentedControl!
    @IBOutlet weak var loginSegmentView: UIView!
    @IBOutlet weak var registerSegmentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(loginSegmentView)
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginSegmentView)
        case 1:
            self.view.bringSubviewToFront(registerSegmentView)
            
            //adjustForKeyboard
            let notificationCenter = NotificationCenter.default
            notificationCenter.addObserver(self, selector: #selector(keyboardShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            notificationCenter.addObserver(self, selector: #selector(keyboardHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        default:
            break
        }
    }
    
    @IBAction func facebookSignup(_ sender: Any) {
        
    }
    
    @IBAction func googleSignup(_ sender: Any) {
        
    }
    
    @IBAction func appleSignup(_ sender: Any) {
        
    }
    
    //MARK: adjust for keyboard
    @objc func keyboardShow(notification: Notification) {
        guard let keyboardValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        let keyboadHeight = keyboardValue.cgRectValue.height
        let bottomSpace = self.view.frame.height - (registerSegmentView.frame.origin.y + registerSegmentView.frame.height)
        self.view.frame.origin.y -= keyboadHeight - bottomSpace
    }
    @objc func keyboardHide() {
        // back to normal view
        self.view.frame.origin.y = 0
    }
}

