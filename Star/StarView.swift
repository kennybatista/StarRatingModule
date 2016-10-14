//
//  StarView.swift
//  Star
//
//  Created by Kenny Batista on 10/12/16.
//  Copyright © 2016 Harambe. All rights reserved.
//

import UIKit

class StarView: UILabel {

    
    override init(frame: CGRect){
        super.init(frame: frame)
        handleStarViewInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleStarViewInit () {
        self.text = "✭"
        self.font = UIFont(name: "Helvetica", size: 45)
        self.frame.origin.x += 30
    }
}
