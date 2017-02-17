//
//  SegmentioBuilder.swift
//  Gank-iOS
//
//  Created by dongyixuan on 2017/2/17.
//  Copyright © 2017年 lemur. All rights reserved.
//

import Foundation
import Segmentio
private let maxItemsInLine = 5
struct SegmentioBuilder {
    static func buildSegmentioView(segmentioView: Segmentio) {
        segmentioView.setup(
            content: initSegmentioItems(),
            style: SegmentioStyle.onlyLabel,
            options: setupSegmentioOptions()
        )
    }
    static func initSegmentioItems() -> [SegmentioItem]{
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
        return content
    }
    
    static func setupSegmentioOptions() -> SegmentioOptions {
        let segmentioOptions = SegmentioOptions(
            backgroundColor: .clear,
            maxVisibleItems: maxItemsInLine,
            scrollEnabled: true,
            indicatorOptions: setSegmentioIndicatorOptions(),
            horizontalSeparatorOptions: setSegmentioHorizontalSeparatorOptions(),
            verticalSeparatorOptions: setSegmentioVerticalSeparatorOptions(),
            imageContentMode: .bottom,
            labelTextAlignment: .center,
            labelTextNumberOfLines: 1,
            segmentStates: setSegmentStates(),
            animationDuration: 0.3
        )
        return segmentioOptions
    }
    
    static func setSegmentioIndicatorOptions() -> SegmentioIndicatorOptions {
        let segmentioIndicatorOptions = SegmentioIndicatorOptions(
            type: .bottom,
            ratio: 0.4,
            height: 2,
            color: .black
        )
        return segmentioIndicatorOptions
    }
    
    static func setSegmentioHorizontalSeparatorOptions() -> SegmentioHorizontalSeparatorOptions {
        let segmentioHorizontalSeparatorOptions = SegmentioHorizontalSeparatorOptions(
            type: SegmentioHorizontalSeparatorType.topAndBottom,
            height: 1,
            color: .white
        )
        return segmentioHorizontalSeparatorOptions
    }
    
    static func setSegmentioVerticalSeparatorOptions() -> SegmentioVerticalSeparatorOptions {
        let segmentioVerticalSepatatorOptions = SegmentioVerticalSeparatorOptions(
            ratio: 1,
            color: .white
        )
        return segmentioVerticalSepatatorOptions
    }
    
    static func setSegmentStates() -> SegmentioStates {
        let segmentStates = SegmentioStates(
            defaultState: SegmentioState(
                backgroundColor: .clear,
                titleFont: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .black
            ),
            selectedState: SegmentioState(
                backgroundColor: .clear,
                titleFont: UIFont.boldSystemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .black
            ),
            highlightedState: SegmentioState(
                backgroundColor: UIColor.lightGray.withAlphaComponent(0.6),
                titleFont: UIFont.boldSystemFont(ofSize: UIFont.smallSystemFontSize),
                titleTextColor: .black
            )
        )
        return segmentStates
    }
}
