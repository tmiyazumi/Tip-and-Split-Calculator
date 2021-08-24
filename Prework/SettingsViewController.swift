//
//  SettingsViewController.swift
//  Prework
//
//  Created by Taise Miyazumi on 8/3/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var rbtUs: UIButton!
    @IBOutlet weak var rbtEuro: UIButton!
    @IBOutlet weak var rbtYuan: UIButton!
    @IBOutlet weak var usD: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Settings Page"
        view.backgroundColor = .secondarySystemBackground
        rbtUs.isSelected = true
        // Do any additional setup after loading the view.
    }
    
//    private let myView: UIView = {
//        let view = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 100))
//        return view
//    }()
//
    
    @IBAction func darkMode(_ sender: UISwitch) {
        
        if switch1.isOn {
           view.backgroundColor = .systemTeal
          } else {
            view.backgroundColor = .secondarySystemBackground
          }
    }
    

    @IBAction func buttonSwitch(_ sender: UIButton) {
        
        if sender.tag == 0
        {
            usD.text = "Works"
            rbtUs.isSelected = true
            rbtEuro.isSelected = false
            rbtYuan.isSelected = false
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        
        if sender.tag == 0
        {
            rbtUs.isSelected = false
            rbtEuro.isSelected = true
            rbtYuan.isSelected = false
        }
    }
    
    @IBAction func button3(_ sender: UIButton) {
        
        if sender.tag == 0
        {
            rbtUs.isSelected = false
            rbtEuro.isSelected = false
            rbtYuan.isSelected = true
        }
    }
    
    
}
