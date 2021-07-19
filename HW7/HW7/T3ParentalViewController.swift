//
//  T3ParentalViewController.swift
//  HW7
//
//  Created by Anton Levkin on 09.07.2021.
//

import UIKit

class T3ParentalViewController: UIViewController {
    
    weak var T3SubViewController:  T3SubViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vct3 = segue.destination as? T3SubViewController, segue.identifier == "Task3View"{
            T3SubViewController = vct3
            vct3.delegate = self
        }
    }
    
    @IBAction func GreenParButton(_ sender: Any) {
        T3SubViewController?.view.backgroundColor = .green
    }
    @IBAction func YellowParButton(_ sender: Any) {
        T3SubViewController?.view.backgroundColor = .yellow
    }
    
    @IBAction func PurpleParButton(_ sender: Any) {
        T3SubViewController?.view.backgroundColor = .purple
    }
}

extension T3ParentalViewController: T3SubViewControllerDelegate{
    func changeColor(_ color : UIColor){
        view.backgroundColor = color
    }
}
