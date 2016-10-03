//
//  SignUpVC.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 10. 3..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var btnSetProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btnSetProfile.layer.cornerRadius = 4
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapBtnSetProfile(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "segSetProfile", sender: self)
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
