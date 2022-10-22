//
//  ViewController.swift
//  AlarmClock
//
//  Created by Carolina on 22.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var volumeValue: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textFieldVolume: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var switchClear: UISwitch!
    @IBOutlet weak var clearButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
    }
    
    @IBAction func volumeValueAction(_ sender: UITextField) {
    }
    
    
    @IBAction func dateAction(_ sender: UIDatePicker) {
    }
    
    
    @IBAction func clickOnSetTime(_ sender: UIButton) {
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
    }
    
    
    @IBAction func clickOnClear(_ sender: UIButton) {
    }
}

