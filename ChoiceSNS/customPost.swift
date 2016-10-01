//
//  customPost.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 9. 30..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import Foundation

class customPost {
    var author = customUser()
    var planA = Plan()
    var planB = Plan()
    var title: String?
    
    init()
    {
        self.author.name = "testGoodnews"
        self.title = "이것은 테스트용입니당"
        
    }
    init(writer: customUser, planA: Plan, planB: Plan, title: String) {
        self.author = writer
        self.title = title
        self.planA = planA
        self.planB = planB
    }
}
