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
    
    
    @IBAction func textFieldAction(_ sender: UITextField) {

        guard let inputNumber = sender.text, !inputNumber.isEmpty else {
            showAlert(title: "Wrong format!", message: "Please enter the value")
            print("Wrong format")
            return
        }
        
        if let actualNumber = Float(inputNumber), actualNumber >= 0 && actualNumber <= 1 {
            slider.value = Float(inputNumber) ?? 0
            volumeValue.progress = Float(inputNumber) ?? 0
        } else {
            showAlert(title: "Wrong format!", message: "Please enter a value from 0 to 1")
        }
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        textFieldVolume.text =  String(sender.value)
        volumeValue.progress = Float(String(sender.value)) ?? 0
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
        textFieldVolume.text = String(0.5)
        
        textFieldVolume.layer.masksToBounds = true
        textFieldVolume.layer.cornerRadius = textFieldVolume.frame.size.height / 2
        
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = timeLabel.frame.size.height / 2
        
        clearButton.layer.cornerRadius = clearButton.frame.size.height / 2
    }
}


extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.textFieldVolume.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


