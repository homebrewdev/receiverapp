//
//  ViewController.swift
//  receiverapp
//
//  Created by Egor Devyatov on 14/08/2019.
//  Copyright © 2019 Egor Devyatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    let myZoomedView = ZoomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // анимированная кнопочка
    @IBAction func animateButton(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.10),
                       initialSpringVelocity: CGFloat(3.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
                        sender.transform = CGAffineTransform.identity
                        sender.alpha = 0.33
        },
                       completion: { Void in()  }
        )
        
        UIView.animate(withDuration: 1.0, animations: {
            sender.alpha = 1
            })
        
    // чтобы уплывало
        imageView.zoomIn(duration: 0.5)
        
    }
    
}

