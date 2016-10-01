//
//  WritePostVC.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 10. 1..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit

class WritePostVC: UIViewController {

    @IBOutlet weak var txfdTitle: UITextField!
    @IBOutlet weak var txfdPlanA: UITextField!
    @IBOutlet weak var txfdPlanB: UITextField!
    @IBOutlet weak var btnShare: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapBtnShare(_ sender: UIBarButtonItem) {
        print("공유버튼 클릭")
        
        var user = customUser()
        user.name = "nilAuthor"
        
        var planA = Plan()
        planA.img = UIImage(named: "imgPlan1_A.jpeg")
        planA.text = txfdPlanA.text!
        
        var planB = Plan()
        planB.img = UIImage(named: "imgPlan1_B.jpeg")
        planB.text = txfdPlanB.text!
        
        let barViewControllers = self.tabBarController?.viewControllers
        let postsVC = barViewControllers?[0] as! MainVC
        
        postsVC.postList.append(customPost(writer: user, planA: planA, planB: planB, title: txfdTitle.text!))
        postsVC.tblPost.reloadData()
        
        txfdTitle.text = nil
        txfdPlanA.text = nil
        txfdPlanB.text = nil
        
        self.tabBarController?.selectedIndex = 0
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
