//
//  ViewController.swift
//  Tab
//
//  Created by young june Park on 2021/11/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnMovealertView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    @IBAction func btnMovepageControlView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    

}

