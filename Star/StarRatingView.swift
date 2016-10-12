//
//  StarRatingView.swift
//  Star
//
//  Created by Kenny Batista on 10/12/16.
//  Copyright © 2016 Harambe. All rights reserved.
//

import UIKit

class StarRatingView: UIView {
//    var star
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        handleAddingStarViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleAddingStarViews () {
        var xPosition = 0
        let width = 100
        
        for i in 1...5 {
            let star = StarView(frame: CGRect(x: xPosition, y: 0, width: width, height: 100))
            self.addSubview(star)
            xPosition += width + 10
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(touches.first)
    }
    
    
}

//var starRating: StarRatingView = StarRatingView(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: 700, height: 300))
