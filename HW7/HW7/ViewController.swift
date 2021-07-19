//
//  ViewController.swift
//  HW7
//
//  Created by Anton Levkin on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var launchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vct2 = segue.destination as? Task2ViewController, segue.identifier == "ShowTask2"{
            vct2.resultColor = launchLabel.text!
            vct2.delegate = self
        }
    }
    
}
extension ViewController: Task2ContorollerDelegate{
    func setColor(_ color: String){
        launchLabel.text = "\(color)"
    }
}
