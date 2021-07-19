//
//  T3SubViewController.swift
//  HW7
//
//  Created by Anton Levkin on 09.07.2021.
//

import UIKit

protocol T3SubViewControllerDelegate{
   func changeColor(_ color : UIColor)
}

class T3SubViewController: UIViewController {
    
    var delegate: T3SubViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func GreenSubButton(_ sender: Any) {
        delegate?.changeColor(.green)
    }
    @IBAction func YellowSubButton(_ sender: Any) {
        delegate?.changeColor(.yellow)
    }
    @IBAction func PurpleSubButton(_ sender: Any) {
        delegate?.changeColor(.purple)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
