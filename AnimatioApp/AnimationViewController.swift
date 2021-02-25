//
//  ViewController.swift
//  AnimatioApp
//
//  Created by Sofi on 25.02.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    let animPop: AnimationInfo = AnimationInfo.animationPop()
    let animWobble: AnimationInfo = AnimationInfo.animationWobble()
    let animFadeIn: AnimationInfo = AnimationInfo.animationFadeIn()
    
    @IBAction func animationRun() {
        switch  infoLabel.text {
        case "Animation parametrs": pop()
        case animPop.text: wobble()
        case animWobble.text: fadeIn()
        case animFadeIn.text: pop()
        default: break
        }
    }
}

extension AnimationViewController {
    
    func pop() {
        animationView.animation = animPop.name
        animationView.curve = animPop.curve
        animationView.force = animPop.force
        animationView.duration = animPop.duration
        animationView.delay = animPop.delay
        animationView.animate()
        infoLabel.text = animPop.text
        runButton.setTitle("Run Wobble", for: .normal)
    }
    
    func wobble() {
        animationView.animation = animWobble.name
        animationView.curve = animWobble.curve
        animationView.force = animWobble.force
        animationView.duration = animWobble.duration
        animationView.delay = animWobble.delay
        animationView.animate()
        infoLabel.text = animWobble.text
        runButton.setTitle("Run fadeIn", for: .normal)
    }
    
    func fadeIn() {
        animationView.animation = animFadeIn.name
        animationView.curve = animFadeIn.curve
        animationView.force = animFadeIn.force
        animationView.duration = animFadeIn.duration
        animationView.delay = animFadeIn.delay
        animationView.animate()
        infoLabel.text = animFadeIn.text
        runButton.setTitle("Run Pop", for: .normal)
    }
}
