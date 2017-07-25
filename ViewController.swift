//
//  ViewController.swift
//  MiraclePills
//
//  Created by KodeSquad on 2/23/17.
//  Copyright © 2017 KodeSquad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alabama", "Alaska", "Arkansas", "Louisiana", "California", "Utah", "Washington", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: UIButton) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        buyBtn.isHidden = true
    }
    
    @IBAction func buyBtnPressed(_ sender: UIButton) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        
        successImage.isHidden = false
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        buyBtn.isHidden = false
    }




}

