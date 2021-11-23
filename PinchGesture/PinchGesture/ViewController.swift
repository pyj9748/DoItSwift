//
//  ViewController.swift
//  PinchGesture
//
//  Created by young june Park on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {

    var initialFontSize:CGFloat!
    
    
    
    @IBOutlet var txtPinch: UILabel!
    @IBOutlet var imgPinch: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        
        if (pinch.state == UIGestureRecognizer.State.began){
            
            initialFontSize = txtPinch.font.pointSize
        }else{
            txtPinch.font = txtPinch.font.withSize(initialFontSize * pinch.scale)
            
        }
        
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1 
    }

}

