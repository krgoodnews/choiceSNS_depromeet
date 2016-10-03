//
//  SetProfileVC.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 10. 3..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit
import ALCameraViewController

class SetProfileVC: UIViewController {
    
    @IBOutlet weak var btnSetImage: UIButton!
    @IBOutlet weak var btnComplete: UIButton!
    
    @IBOutlet weak var btnTemp: UIButton!
    
    var img4Save: UIImage?
    var data4Save: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnSetImage.layer.cornerRadius = 75
        self.btnComplete.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapBtnSetImage(_ sender: UIButton) {
        let croppingEnabled = true
        let libraryViewController = CameraViewController.imagePickerViewController(croppingEnabled) {image, asset in
            
            
            // 프사(화면출력용) 동그랗게 만들기 작업
            UIGraphicsBeginImageContextWithOptions(sender.frame.size, false, (image?.scale)!)
            let rect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
            UIBezierPath(roundedRect: rect, cornerRadius: rect.width/2).addClip()
            image?.draw(in: rect)
            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            
            
            // 프사(업로드용) 압축작업
            let rect4save = CGRect(x: 0.0, y: 0.0, width: 1024.0, height: 1024.0)
            UIGraphicsBeginImageContext(rect4save.size)
            image?.draw(in: rect4save)
            let img = UIGraphicsGetImageFromCurrentImageContext()
            let imgData = UIImageJPEGRepresentation(img!, 0.5)
            UIGraphicsEndImageContext()
            
            self.data4Save = imgData

            
            sender.setBackgroundImage(newImage, for: UIControlState.normal)
            
            //self.img4Save?.size.width /= 2
            self.btnTemp.setBackgroundImage(self.img4Save, for: .normal)
            sender.setTitle(nil, for: .normal)
            self.dismiss(animated: true, completion: nil)
            
        }
        present(libraryViewController, animated: true, completion: nil)
    }
    @IBAction func didTapBtnComplete(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "segCompleteSignUp", sender: self)
    }
    @IBAction func didTapBtnTemp(_ sender: AnyObject) {
        print(btnSetImage.backgroundImage(for: .normal)?.size.width)
        print(btnSetImage.backgroundImage(for: .normal)?.size.height)

        
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
