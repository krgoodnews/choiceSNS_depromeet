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
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblSituation: UILabel!
    
    @IBOutlet weak var lblPlanA: UILabel!
    @IBOutlet weak var lblPlanB: UILabel!
    
    
    @IBOutlet weak var blurPlanA: UIVisualEffectView!
    @IBOutlet weak var blurPlanB: UIVisualEffectView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none// 셀 하이라이팅 안되게 하기
        
        
        
        //         이미지버튼 클릭 인식
        let gestureRecognizerAuthor = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        let gestureRecognizerPlanADoubleTap = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        let gestureRecognizerPlanBDoubleTap = UITapGestureRecognizer(target: self, action: #selector(didTapImg(gesture:)))
        
        gestureRecognizerPlanADoubleTap.numberOfTapsRequired = 2
        gestureRecognizerPlanBDoubleTap.numberOfTapsRequired = 2
        
        imgAuthor.isUserInteractionEnabled = true
        imgPlanA.isUserInteractionEnabled = true
        imgPlanB.isUserInteractionEnabled = true
        
        imgAuthor.addGestureRecognizer(gestureRecognizerAuthor)
        imgPlanA.addGestureRecognizer(gestureRecognizerPlanADoubleTap)
        imgPlanB.addGestureRecognizer(gestureRecognizerPlanBDoubleTap)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.blurPlanA.alpha = 0
        self.blurPlanB.alpha = 0
    }
    
    func didTapImg(gesture: UIGestureRecognizer) {
        if gesture.view as? UIImageView == imgAuthor {
            print("작가 선택")
            print(gesture.view?.tag)
        }
        else if gesture.view as? UIImageView == imgPlanA {
            print("플랜A 선택")
            UIView.animate(withDuration: 0.3, animations: {
                self.blurPlanB.alpha = 1
            })
            
        }
        else if gesture.view as? UIImageView == imgPlanB {
            print("플랜B 선택")
            UIView.animate(withDuration: 0.3, animations: {
                self.blurPlanA.alpha = 1
            })
        }
    }
    
}
