//
//  EditViewController.swift
//  Navigation
//
//  Created by young june Park on 2021/11/08.
//

import UIKit

protocol EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message : String)
    func didImageOnOffDone(_ controller: EditViewController, isOn : Bool)
}


class EditViewController: UIViewController {
    
    @IBOutlet var txMessage: UITextField!
    var textWayValue : String = ""
    var textMessage : String = ""
    var delegate : EditDelegate?
    var isOn = false
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var swIsOn: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
        swIsOn.isOn = isOn
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil{
            delegate?.didMessageEditDone(self, message: txMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImageOnOFf(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
        }
        else{
            isOn = false
            
        }
    }
    
    
   

}
