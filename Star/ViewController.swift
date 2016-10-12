//
//  ViewController.swift
//  Star
//
//  Created by Kenny Batista on 10/12/16.
//  Copyright © 2016 Harambe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        let starRatingView: StarRatingView = StarRatingView(frame: CGRect(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: 700, height: 300))
        self.view.addSubview(starRatingView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

