//
//  ViewController.swift
//  ArunDeegutla
//
//  Created by Arun Deegutla on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var noPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var yearSegControl: UISegmentedControl!
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var bgColorPicker: UIColorWell!
    
    
    
    @IBAction func introduceButton(_ sender: UIButton) {
        let year = yearSegControl.titleForSegment(at: yearSegControl.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am a \(year!) year \(majorTextField.text!) student at \(schoolTextField.text!). I own \(noPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."

        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        noPetsLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bgColorPicker.selectedColor = UIColor(white: 1, alpha: 1)
        bgColorPicker.addTarget(self, action: #selector(colorWellChanged(_:)), for: .valueChanged)
    }
    
    @objc func colorWellChanged(_ sender: Any){
        self.view.backgroundColor = bgColorPicker.selectedColor
    }
    

}
