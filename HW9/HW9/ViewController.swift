//
//  ViewController.swift
//  HW9
//
//  Created by Anton Levkin on 19.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Task3Label: UILabel!
    @IBOutlet weak var Task3Button: UIButton!
    @IBOutlet weak var WidthLabel: NSLayoutConstraint!
    @IBOutlet weak var HeightLabel: NSLayoutConstraint!
    
    let ScreenHeight = Int(UIScreen.main.bounds.size.height)
    let ScreenWidth = Int(UIScreen.main.bounds.size.width)
    let FontSize = CGFloat(20)
    
    @IBAction func Task3Button(_ sender: Any) {
        if Task3Label.text == "" {
            HeightLabel.constant = FontSize + 10
            WidthLabel.constant = CGFloat((ScreenWidth / 10) * 9)
            Task3Label.text! += Heading
            Task3Button.setTitle("Показать полностью?", for: .normal)
            Memory = "ShowHeading"
        } else if Memory == "ShowHeading" {
            Task3Label.text! += "\n"
            HeightLabel.constant += FontSize * 5 //
            Task3Label.text! += FishText //
            Task3Button.setTitle("Свернуть обратно?", for: .normal)
            Memory = "ShowFishText"
        } else if Memory == "ShowFishText" {
            Task3Label.text! = Heading
            HeightLabel.constant -= FontSize * 5
            Memory = "HideFishText"
            Task3Button.setTitle("Свернуть совсем?", for: .normal)
        } else if Memory == "HideFishText" {
            Task3Label.text = ""
            WidthLabel.constant = 0
            HeightLabel.constant = 0
            Task3Button.setTitle("Показать снова?", for: .normal)
        }
        
    }
    
    var Memory = ""
    
    var Heading = "Task3"
    
    var FishText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a sapien a quam iaculis rutrum. Duis vel nisi justo. Nam cursus ante nulla, quis mattis ipsum posuere in. Integer varius pharetra magna, nec vehicula lacus fringilla ac. Sed in sapien porttitor, viverra enim non, ultricies quam. Proin id gravida felis. Ut gravida euismod nibh ut gravida. Nulla facilisi. Vestibulum vel nibh id justo tincidunt euismod. Nam semper risus eu nisl scelerisque, vitae tempus quam auctor. Suspendisse libero urna, maximus quis purus sit amet, consequat mollis magna."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Task3Label.text = ""
        Task3Label.font.withSize(FontSize)
        Task3Label.numberOfLines = 0
        Task3Button.setTitle("Показать", for: .normal)
        
    }


}

