//
//  ViewController.swift
//  pickYourSoulMate
//
//  Created by joseph on 2020/3/30.
//  Copyright © 2020 joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var starTextfield: UITextField!
    @IBOutlet weak var genderSegmentControl: UISegmentedControl!
    @IBOutlet weak var trueSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var yesOrNoSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func trueLoveButton(_ sender: UIButton) {
        let star = starTextfield.text!
        let gender = genderSegmentControl.selectedSegmentIndex
        let truelove = trueSwitch.isOn
        let age:Int! = Int(ageLabel.text!)
        yesOrNoSegmentedControl.isHidden = false
        if star != "Aquarius" && star != "水瓶座" && gender == 1 && truelove && age <= 40 && age >= 20
        {yesOrNoSegmentedControl.selectedSegmentIndex = 0}else{
            yesOrNoSegmentedControl.selectedSegmentIndex = 1
        }
       
    }
    
    @IBAction func closeKeyBoard(_ sender: Any) {
        
    }
    
    @IBAction func ageSlider(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        ageLabel.text = "\(currentValue)"
        
    }
    

}

