//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Egor on 16.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    @objc func buttonTapped(_ sender: Any) {
        print("Hello my boy!")
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func TextChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func secondTapped(_ sender: UIButton) {
        print("Button was tapped")
        
        if toggle.isOn {
            print("Switch is on!")
        } else {
            print("Switch is off!")
        }
        
        print("\(slider.value)")
    }
    
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is on!")
        } else {
            print("Switch is off")
        }
    
    }
}

