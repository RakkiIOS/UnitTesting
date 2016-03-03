//
//  ViewController.swift
//  UnitTesting
//
//  Created by Pandyperumal on 3/3/16.
//  Copyright © 2016 BLT0003-IMAC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController ,UITextFieldDelegate,UIAlertViewDelegate{
    
    @IBOutlet weak var txtField_UserName: UITextField!
    @IBOutlet weak var txtField_Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //// Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func login(sender:UIButton)  {
        if txtField_UserName.text == ""{
            print("UserName Should not be empty")
        } else if txtField_Password.text == ""  {
            print("Password Should not be empty")
        }  else  {
            let registerVC = self.storyboard?.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
            self.navigationController?.pushViewController(registerVC, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

