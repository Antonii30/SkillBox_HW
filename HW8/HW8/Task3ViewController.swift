//
//  Task3ViewController.swift
//  HW8
//
//  Created by Anton Levkin on 16.07.2021.
//

import UIKit

class Task3ViewController: UIViewController {

    @IBOutlet weak var T3View: UIView!
    
    @IBOutlet weak var Task3_1Textfield: UITextField!
    @IBOutlet weak var Task3_2Textfield: UITextField!
    
    @IBOutlet weak var T3_1Button: UIButton!
    @IBOutlet weak var T3_2Button: UIButton!
    
    @IBOutlet weak var T3_1ImageView: UIImageView!
    @IBOutlet weak var T3_2ImageView: UIImageView!
    
    @IBOutlet weak var T3SegmetControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        disable()
        T3SegmetControl.selectedSegmentIndex = 0
        T3View.backgroundColor = UIColor.green
        Task3_1Textfield.isHidden = false
        Task3_2Textfield.isHidden = false
    }
    
    func disable(){
        Task3_1Textfield.isHidden = true
        Task3_2Textfield.isHidden = true
        T3_1Button.isHidden = true
        T3_2Button.isHidden = true
        T3_1ImageView.isHidden = true
        T3_2ImageView.isHidden = true
    }
    
    @IBAction func indexChanged(sender : UISegmentedControl) {
            switch sender.selectedSegmentIndex {
            case 0:
                disable()
                T3View.backgroundColor = UIColor.green
                Task3_1Textfield.isHidden = false
                Task3_2Textfield.isHidden = false
            case 1:
                disable()
                T3View.backgroundColor = UIColor.blue
                T3_1Button.isHidden = false
                T3_2Button.isHidden = false
            case 2:
                disable()
                T3View.backgroundColor = UIColor.purple
                T3_1ImageView.isHidden = false
                T3_2ImageView.isHidden = false
            default:
                break;
            }
        }
}
