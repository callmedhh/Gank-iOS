//
//  ViewController.swift
//  Gank-iOS
//
//  Created by dongyixuan on 2017/2/16.
//  Copyright © 2017年 lemur. All rights reserved.
//

import UIKit
import Segmentio

class ViewController: UIViewController {

    @IBOutlet weak var segmentioView: Segmentio!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        SegmentioBuilder.buildSegmentioView(segmentioView: segmentioView)
        
        segmentioView.selectedSegmentioIndex = 0
        
        segmentioView.valueDidChange = { segmentio, segmentIndex in
            self.segmentioView.selectedSegmentioIndex = segmentIndex
        }
    }
}

