//
//  WritePostVC.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 10. 1..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit
import ALCameraViewController


class WritePostVC: UIViewController {

    @IBOutlet weak var txfdTitle: UITextField!
    @IBOutlet weak var txfdPlanA: UITextField!
    @IBOutlet weak var txfdPlanB: UITextField!
    @IBOutlet weak var btnShare: UIBarButtonItem!
    
    @IBOutlet weak var btnPlanA: UIButton!
    @IBOutlet weak var btnPlanB: UIButton!
    
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
        user.name = "krgoodnews"
        
        var planA = Plan()
        planA.img = btnPlanA.backgroundImage(for: .normal)
        planA.text = txfdPlanA.text!
        
        var planB = Plan()
        planB.img = UIImage(named: "imgPlan1_B.jpeg")
        planB.img = btnPlanB.backgroundImage(for: .normal)
        planB.text = txfdPlanB.text!
        
        let barViewControllers = self.tabBarController?.viewControllers
        let postsVC = barViewControllers?[0] as! MainVC
        
//        postsVC.postList.append(customPost(writer: user, planA: planA, planB: planB, title: txfdTitle.text!))
        postsVC.postList.insert(customPost(writer: user, planA: planA, planB: planB, title: txfdTitle.text!), at: 0)
        postsVC.tblPost.reloadData()
        
        cleanThisView()
        
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func didTapBtnPlan(_ sender: UIButton) {
        let croppingEnabled = true
        let libraryViewController = CameraViewController.imagePickerViewController(croppingEnabled) {image, asset in
            
            // Do something with your image here.
            // If cropping is enabled this image will be the cropped version
            print("자르기완료")
            sender.setBackgroundImage(image, for: UIControlState.normal)
            sender.setTitle(nil, for: .normal)
            self.dismiss(animated: true, completion: nil)
        }
        
        present(libraryViewController, animated: true, completion: nil)
    }
    
    func cleanThisView() {
        txfdTitle.text = nil
        txfdPlanA.text = nil
        txfdPlanB.text = nil
        
        btnPlanA.setBackgroundImage(nil, for: .normal)
        btnPlanB.setBackgroundImage(nil, for: .normal)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
