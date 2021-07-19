//
//  ViewController.swift
//  HW6_1
//
//  Created by Anton Levkin on 25.06.2021.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var wordTextfield: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var word1Textfield: UITextField!
    
    @IBOutlet weak var resultLabel_1: UILabel!
    
    @IBOutlet weak var oneAugendTextfield: UITextField!
    
    @IBOutlet weak var charTextfield: UITextField!
    
    @IBOutlet weak var twoAugendTextfield: UITextField!
    
    @IBOutlet weak var result3Label: UILabel!
    
    // task 1
    
    @IBAction func glueTogetherButton(_ sender: Any) {
        resultLabel.text = "\(wordTextfield.text!) \(resultLabel.text!) "
        wordTextfield.text = ""
    }
    // task 2
    
    @IBAction func exponentiationButton(_ sender: Any) {
        if let number = Int(word1Textfield.text!) {
            let res = pow(2,number)
            let res1 = NSDecimalNumber(decimal: res).stringValue
            resultLabel_1.text = res1
        } else {
            resultLabel_1.text = "Введите число"
        }
    }
    
    // task 3
        
    @IBAction func result3Button(_ sender: Any) {
        enum Operation: String{
            case plus = "+"
            case minus = "-"
            case multiplication = "*"
            case division = "/"
        }
        if let oneAugend = Int(oneAugendTextfield.text!), let twoAugend = Int(twoAugendTextfield.text!), let operation = Operation(rawValue: charTextfield.text ?? ""){
            switch operation{
            case .plus:
                let res = oneAugend + twoAugend
                let res1 = String(res)
                result3Label.text = res1
            case .minus:
                let res = oneAugend - twoAugend
                let res1 = String(res)
                result3Label.text = res1
            case .multiplication:
                let res = oneAugend * twoAugend
                let res1 = String(res)
                result3Label.text = res1
            case .division where twoAugend != 0:
                let res = oneAugend / twoAugend
                let res1 = String(res)
                result3Label.text = res1
            default:
                result3Label.text = "Некоректные данные"
            }
        } else {
            result3Label.text = "Некоректные данные"
        }
    }
}

