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
        
        if (touchIsWithinBoundary(location, 45, 105)){
            let firstStar = starArray[0]
            shiftStarToNewState(firstStar)
            
        } else if (touchIsWithinBoundary(location, 105, 160) ) {
            let secondStar = starArray[1]
            shiftStarToNewState(secondStar)
            
        } else if (touchIsWithinBoundary(location, 160, 223)) {
            let thirdStar = starArray[2]
            shiftStarToNewState(thirdStar)
            
        } else if (touchIsWithinBoundary(location, 223, 284) ) {
            let fourthStar = starArray[3]
            shiftStarToNewState(fourthStar)
            
        } else if (touchIsWithinBoundary(location, 284, 345) ) {
            let fifthStar = starArray[4]
            shiftStarToNewState(fifthStar)
        }
    }
    
    func touchIsWithinBoundary(location: CGPoint, _ lowerBound: Int, _ upperBound: Int) -> Bool {
        return (location.x >= CGFloat(lowerBound) && location.x <= CGFloat(upperBound))
    }
    
    func shiftStarToNewState(star: StarView){
        if star.stateSelected == false {
            star.shiftToSelectedState()
        }
    }
}
