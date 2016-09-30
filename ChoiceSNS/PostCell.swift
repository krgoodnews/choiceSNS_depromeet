//
//  PostCell.swift
//  ChoiceSNS
//
//  Created by Goodnews on 2016. 9. 30..
//  Copyright © 2016년 depromeet. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var imgAuthor: UIImageView!
    @IBOutlet weak var imgPlanA: UIImageView!
    @IBOutlet weak var imgPlanB: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // 이미지버튼 클릭 인식
        let gestureRecognizerAuthor = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        let gestureRecognizerPlanA = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        let gestureRecognizerPlanB = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        
        imgAuthor.isUserInteractionEnabled = true
        imgPlanA.isUserInteractionEnabled = true
        imgPlanB.isUserInteractionEnabled = true

        imgAuthor.addGestureRecognizer(gestureRecognizerAuthor)
        imgPlanA.addGestureRecognizer(gestureRecognizerPlanA)
        imgPlanB.addGestureRecognizer(gestureRecognizerPlanB)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func didTapImg(gesture: UIGestureRecognizer) {
        if gesture.view as? UIImageView == imgAuthor {
            print("작가 선택")
        }
        else if gesture.view as? UIImageView == imgPlanA {
            print("플랜A")
        }
        else if gesture.view as? UIImageView == imgPlanB {
            print("플랜B")
        }
    }
    
}
