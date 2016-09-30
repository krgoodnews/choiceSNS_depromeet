//
//  MiniCommentTableView.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 9. 30..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit

class MiniCommentTableView: UITableView, UITableViewDataSource {

    
    
    var commnets:[String] = ["역시 점심엔 짜장이지!", "쟁반짜장 먹고싶다..", "짜증날땐 짜장면"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.commnets.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = self.tableView.dequeueReusableCell(withIdentifier: "cellPost", for: indexPath)
        let cell = self.dequeueReusableCell(withIdentifier: "cellMiniComment", for: indexPath)
        cell.textLabel?.text = self.commnets[indexPath.row]
        return cell
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
