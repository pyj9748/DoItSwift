//
//  ViewController.swift
//  SwipeGesture
//
//  Created by young june Park on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {
    let numOfTouchs = 2;
    @IBOutlet var imgViewUp: UIImageView!
    @IBOutlet var imgViewDown: UIImageView!
    
    @IBOutlet var imgViewLeft: UIImageView!
    @IBOutlet var imgViewRight: UIImageView!
    
    var imgLeft = [UIImage]()
    var imgRight = [UIImage]()
    var imgUp = [UIImage]()
    var imgDown = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        imgUp.append(UIImage(named: "arrow-up-black")!)
        imgUp.append(UIImage(named: "arrow-up-red")!)
        imgDown.append(UIImage(named: "arrow-down-black")!)
        imgDown.append(UIImage(named: "arrow-down-red")!)
        imgLeft.append(UIImage(named: "arrow-left-black")!)
        imgLeft.append(UIImage(named: "arrow-left-red")!)
        imgRight.append(UIImage(named: "arrow-right-black")!)
        imgRight.append(UIImage(named: "arrow-right-red")!)
    
        imgViewUp.image = imgUp[0]
        imgViewDown.image = imgDown[0]
        imgViewLeft.image = imgLeft[0]
        imgViewRight.image = imgRight[0]
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        //swipeUp.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
       // swipeDown.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
       // swipeLeft.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
       // swipeRight.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeRight)
        
    }

    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgViewUp.image = imgUp[0]
            imgViewDown.image = imgDown[0]
            imgViewLeft.image = imgLeft[0]
            imgViewRight.image = imgRight[0]
            
            
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.up:
                imgViewUp.image = imgUp[1]
            case UISwipeGestureRecognizer.Direction.down:
                imgViewDown.image = imgDown[1]
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = imgLeft[1]
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = imgRight[1]
            default :
                break
                
            }
        }
    }
    
    
}

