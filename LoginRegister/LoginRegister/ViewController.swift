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
        // Do any additional setup after loading the view.
        self.view.bringSubviewToFront(loginSegmentView)
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginSegmentView)
        case 1:
            self.view.bringSubviewToFront(registerSegmentView)
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
}

