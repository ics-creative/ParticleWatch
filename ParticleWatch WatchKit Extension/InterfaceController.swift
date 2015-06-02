//
//  InterfaceController.swift
//  ParticleWatch WatchKit Extension
//
//  Created by 鹿野壮 on 2015/06/02.
//  Copyright (c) 2015年 鹿野壮. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    /** アニメーションのレイヤー */
    @IBOutlet weak var animationLayer: WKInterfaceGroup!
    
    /** スライダーの値が変更した時 */
    @IBAction func changeHandler(value: Float) {
        // スライダーの値
        let targetIndex:Int = Int(value);
        // アニメーションの開始位置
        let imageStart:Int;
        // アニメーションの範囲
        let imageRange:NSRange;
        // アニメーション時間
        let imageDuration:Double;
        
        // スライダーの値によって、アニメーションの開始位置を決定
        switch targetIndex {
        case 2:
            imageStart = 100;
        case 3:
            imageStart = 200;
        default:
            imageStart = 0;
        }
        
        // スライダーの値によってアニメーションする範囲を決定
        if (targetIndex == 0)
        {
            imageRange = NSMakeRange(imageStart, 300);
            imageDuration = 5;
        }
        else
        {
            imageRange = NSMakeRange(imageStart, 100);
            imageDuration = 1.66;
        }
        
        // 範囲と時間を指定してアニメーションを無限ループ再生
        animationLayer.startAnimatingWithImagesInRange(imageRange, duration: imageDuration, repeatCount: 0);
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}