//
//  ViewController.swift
//  HW8
//
//  Created by Anton Levkin on 13.07.2021.
//

import UIKit

class Task1ViewController: UIViewController {

    @IBOutlet weak var Task1ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var image = [UIImage(named: "Task1_1"),UIImage(named: "Task1_2"),UIImage(named:"Task1_3"),UIImage(named:"Task1_4")]
    
    var currentIndex = 0

    @IBAction func BackButton(_ sender: Any) {
        if currentIndex <= 0{
            currentIndex = image.endIndex - 1
            Task1ImageView.image = image[ currentIndex % image.count]
        } else {
            currentIndex -= 1
            Task1ImageView.image = image[ currentIndex % image.count]
        }
    }
    @IBAction func NextButton(_ sender: Any) {
        currentIndex += 1
        Task1ImageView.image = image[ currentIndex % image.count]
    }
    
}

