//
//  Task2ViewController.swift
//  HW7
//
//  Created by Anton Levkin on 07.07.2021.
//

import UIKit

protocol Task2ContorollerDelegate{
    func setColor(_ color: String)
}

class Task2ViewController: UIViewController {
    var resultColor = ""
    
    var delegate: Task2ContorollerDelegate?
    
    @IBOutlet weak var resultColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultColorLabel.text = resultColor
        if resultColorLabel.text == "Выбран зеленый цвет"{
            resultColorLabel.textColor = UIColor.green
        } else if resultColorLabel.text == "Выбран синий цвет"{
            resultColorLabel.textColor = UIColor.blue
        } else if resultColorLabel.text == "Выбран красный цвет"{
            resultColorLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func GreenButton(_ sender: Any) {
        resultColorLabel.text = "Выбран зеленый цвет"
        delegate?.setColor(resultColorLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func BlueButton(_ sender: Any) {
        resultColorLabel.text = "Выбран синий цвет"
        delegate?.setColor(resultColorLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func RedButton(_ sender: Any) {
        resultColorLabel.text = "Выбран красный цвет"
        delegate?.setColor(resultColorLabel.text!)
        self.dismiss(animated: true, completion: nil)
    }
}
