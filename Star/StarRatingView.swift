//
//  StarRatingView.swift
//  Star
//
//  Created by Kenny Batista on 10/12/16.
//  Copyright © 2016 Harambe. All rights reserved.
//

import UIKit

class StarRatingView: UIView {
    var starArray: [StarView] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        handleAddingStarViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleAddingStarViews () {
        var xPosition = 20
        let width = 50
        
        for i in 1...5 {
            let star = StarView(frame: CGRect(x: xPosition, y: Int(self.frame.size.height / 2 - 10), width: width, height: 20))
            
            self.addSubview(star)
            starArray.append(star)
            xPosition += width + 10
        }
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first?.location(in: self)
//        print(location)
        
        if ((location?.x)! >= CGFloat(45) && (location?.x)! <= CGFloat(105) ){
            let firstStar = starArray[0]
            if firstStar.stateSelected == false {
                firstStar.shiftToSelectedState()
            }
            
        } else if ((location?.x)! >= CGFloat(105) && (location?.x)! <= CGFloat(160) ) {
            let secondStar = starArray[1]
            if secondStar.stateSelected == false {
                secondStar.shiftToSelectedState()
            }
            
        } else if ((location?.x)! >= CGFloat(160) && (location?.x)! <= CGFloat(223) ) {
            let thirdStar = starArray[2]
            if thirdStar.stateSelected == false {
                thirdStar.shiftToSelectedState()
            }
            
        } else if ((location?.x)! >= CGFloat(223) && (location?.x)! <= CGFloat(284) ) {
            let fourthStar = starArray[3]
            if fourthStar.stateSelected == false {
                fourthStar.shiftToSelectedState()
            }
            
        } else if ((location?.x)! >= CGFloat(284.1) && (location?.x)! <= CGFloat(345) ) {
            let fifthStar = starArray[4]
            if fifthStar.stateSelected == false {
                fifthStar.shiftToSelectedState()
            }
            
        }
        
    }
    
    
}

//var starRating: StarRatingView = StarRatingView(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: 700, height: 300))
