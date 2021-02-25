//
//  AnimationInfo.swift
//  AnimatioApp
//
//  Created by Sofi on 26.02.2021.
//

import UIKit

struct AnimationInfo {
    
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay:CGFloat
    let text: String
}

extension AnimationInfo {
    static func animationPop () -> AnimationInfo {
    
        AnimationInfo (name: "pop",
                       curve: "easeIn",
                       force: 1.2,
                       duration: 1.3,
                       delay: 0.15,
    text: "Animation: Pop \nCurve: EaseIn \nForse: 1.2 \nDuration: 1.3 \nDelay: 0.15 ")
        }
    
    static func animationWobble () -> AnimationInfo {
    
        AnimationInfo (name: "wobble",
                       curve: "easeInOut",
                       force: 1.5,
                       duration: 2.5,
                       delay: 0.23,
    text: "Animation: Wobble \nCurve: EaseInOut \nForse: 1.5 \nDuration: 2.5 \nDelay: 0.23 ")
        }
    
    static func animationFadeIn() -> AnimationInfo {
    
        AnimationInfo (name: "fadeIn",
                       curve: "linear",
                       force: 2.5,
                       duration: 2,
                       delay: 0.3,
    text: "Animation: FadeIn \nCurve: Linear \nForse: 2.5 \nDuration: 2 \nDelay: 0.3 ")
        }
}
