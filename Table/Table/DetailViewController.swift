//
//  DetailViewController.swift
//  Table
//
//  Created by young june Park on 2021/11/09.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveItem = ""
    
    
    @IBOutlet var lblItem: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
    }
    func receiveItem(_ item : String){
        receiveItem = item
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
