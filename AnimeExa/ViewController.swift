//
//  ViewController.swift
//  AnimeExa
//
//  Created by 夏目　崇 on 2019/04/23.
//  Copyright © 2019年 夏目　崇. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    @IBAction func tapstartButton(_ sender: Any) {
        var soundID: SystemSoundID = 0
        if let soundurl =  Bundle.main.url(forResource: "osaki4bansen3",withExtension:"mp3"){
            AudioServicesCreateSystemSoundID(soundurl as CFURL,&soundID)
            AudioServicesPlaySystemSoundWithCompletion(soundID,{()->Void in })
            
        }
        
        let animation = CABasicAnimation(keyPath:"cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionDefault)
        
        animation.fromValue = 0
        animation.toValue = 20
        
        animation.duration = 1
        
    targetView.layer.add(animation,forKey: "cornerRadius")
    targetView.layer.cornerRadius = 20
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

