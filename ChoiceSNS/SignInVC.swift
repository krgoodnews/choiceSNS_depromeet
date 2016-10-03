//
//  InitialVC.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 10. 3..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit
import PasswordTextField

class SignInVC: UIViewController {

    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnSignIn.layer.cornerRadius = 4
        self.btnSignUp.layer.cornerRadius = 4

        //self.txfdPassword.validationRule = validationRule


        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapBtnSignIn(_ sender: AnyObject) {
        if passwordTextField.isInvalid()
        {
            //Swhos the error if the password is invalid, as an example is using an alert view but you can show it anyway you want
//            let alert = UIAlertController(title: "Alert", message: passwordTextField.errorMessage(), preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
            self.performSegue(withIdentifier: "segAutoLogin", sender: self)

        }
    }
    
    @IBAction func didTapBtnSignUp(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "segSignUp", sender: self)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
