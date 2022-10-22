//
//  ViewController.swift
//  AlarmClock
//
//  Created by Carolina on 22.10.22.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var volumeValue: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textFieldVolume: UITextField!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var timeButton: UIButton!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var switchClear: UISwitch!
    @IBOutlet private weak var clearButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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
    
    private func setupUI() {
        datePicker.locale = Locale.current
        timeLabel.text = ""
        textFieldVolume.text = "0.5"
        
        textFieldVolume.layer.masksToBounds = true
        textFieldVolume.layer.cornerRadius = textFieldVolume.frame.size.height / 2
        
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = timeLabel.frame.size.height / 2
        
        clearButton.layer.cornerRadius = clearButton.frame.size.height / 2
    }
}
