//
//  Plan.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 9. 30..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import Foundation
import UIKit

struct Plan {
    var text: String?
    var img: UIImage?
    var choice = false
    
    init() {
        self.text = "테스트 플랜"
        self.img = UIImage(named: "imgMoon.jpeg")
    }
}
