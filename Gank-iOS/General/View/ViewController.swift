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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupSegmentio()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupSegmentio(){
        var segmentioView: Segmentio!
        
        let segmentioViewRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 60)
        segmentioView = Segmentio(frame: segmentioViewRect)
        
        var content = [SegmentioItem]()
        // 科技资讯 趣味软件 装备党 草根新闻 Android 创业新闻 独立思想 iOS 团队博客
        let techItem = SegmentioItem(title: "科技资讯", image: nil)
        content.append(techItem)
        let interestingItem = SegmentioItem(title: "趣味软件", image: nil)
        content.append(interestingItem)
        let equipmentItem = SegmentioItem(title: "装备党", image: nil)
        content.append(equipmentItem)
        let newsItem = SegmentioItem(title: "草根新闻", image: nil)
        content.append(newsItem)
        let androidItem = SegmentioItem(title: "Android", image: nil)
        content.append(androidItem)
        let enterpriseItem = SegmentioItem(title: "创业新闻", image: nil)
        content.append(enterpriseItem)
        let dependentItem = SegmentioItem(title: "独立思想", image: nil)
        content.append(dependentItem)
        let iOSItem = SegmentioItem(title: "iOS", image: nil)
        content.append(iOSItem)
        let teamItem = SegmentioItem(title: "团队博客", image: nil)
        content.append(teamItem)
        
        let indicatorOptions = SegmentioIndicatorOptions(
            type: .bottom,
            ratio: 1,
            height: 5,
            color: .orange
        )
        
        let horizontalSeparatorOptions = SegmentioHorizontalSeparatorOptions(
            type: SegmentioHorizontalSeparatorType.topAndBottom, // Top, Bottom, TopAndBottom
            height: 1,
            color: .gray
        )
        
        let verticalSeparatorOptions = SegmentioVerticalSeparatorOptions(
            ratio: 0.6, // from 0.1 to 1
            color: .gray
        )
        
        let segmentioState = SegmentioStates(
            defaultState: SegmentioState(
                backgroundColor: .clear,
                titleFont: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .black
            ),
            selectedState: SegmentioState(
                backgroundColor: .orange,
                titleFont: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .white
            ),
            highlightedState: SegmentioState(
                backgroundColor: UIColor.lightGray.withAlphaComponent(0.6),
                titleFont: UIFont.boldSystemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .black
            )
        )
        
        let options = SegmentioOptions(
            backgroundColor: .white,
            maxVisibleItems: 5,
            scrollEnabled: true,
            indicatorOptions: indicatorOptions,
            horizontalSeparatorOptions: horizontalSeparatorOptions,
            verticalSeparatorOptions: verticalSeparatorOptions,
            imageContentMode: .bottom,
            labelTextAlignment: .center,
            labelTextNumberOfLines: 1,
            segmentStates: segmentioState,
            animationDuration: 100
        )
        
        segmentioView.setup(
            content: content,
            style: SegmentioStyle.imageAfterLabel,
            options: options
        )
        segmentioView.selectedSegmentioIndex = 0
        
        segmentioView.valueDidChange = { segmentio, segmentIndex in
            
        }
        
        view.addSubview(segmentioView)
    }

}

