//
//  ViewController.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 9. 30..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblPost: PostTableView!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    var heightCell = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblPost.delegate = self
        tblPost.dataSource = self
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapBtnMenu(_ sender: AnyObject) {
        print("화면 사이즈 : \(self.view.frame.size.width)")
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let frameWidth = self.view.frame.size.width
        
        // 프사 사이즈 + 프사 위아래 여백 + (화면넓이 - 10) / 2 + 플랜사진 아래 여백
        return 40 + 10 + (frameWidth - 10) / 2 + 20
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PostCell = self.tblPost.dequeueReusableCell(withIdentifier: "cellPost", for: indexPath) as! PostCell
        
        var width = cell.imgPlanA.frame.size.width
        var widthPixel = width * (cell.imgPlanA.image?.scale)!
        print("그림사이즈 : \(cell.imgPlanA.image?.scale)")
        return cell
    }

}

