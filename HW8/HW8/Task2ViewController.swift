//
//  Task2ViewController.swift
//  HW8
//
//  Created by Anton Levkin on 14.07.2021.
//

import UIKit

class Task2ViewController: UIViewController {

    let images = [UIImage(named: "Task1_1"), UIImage(named: "Task1_2"), UIImage(named: "Task1_3"),UIImage(named:"Task1_4")]


    override func viewDidLoad() {
        super.viewDidLoad()

        let screenWidth = Double(self.view.frame.size.width)
        let imageWidth = screenWidth / 2 - 10 - 10
        let imageHeight = imageWidth * 1.2

        var imageCoordinateX = 0
        var imageCoordinateY = 0
        var stepY = 0
        var definitionOfPositonImage = 0

        for i in 0...images.count - 1 {
            if i % 2 == 0 && definitionOfPositonImage % 2 == 0 {
                imageCoordinateX = 15
                stepY += 1
            } else {
                imageCoordinateX = 220
            }
                definitionOfPositonImage += 1
                imageCoordinateY = stepY * 180

            let imageView = UIImageView()
            let labelInfo = UILabel()
            let labelPrice = UILabel()
            let labelDesk = UILabel()
            let labelSale = UILabel()
            labelSale.font = labelSale.font.withSize(14)
            labelPrice.textColor = UIColor.red
            labelInfo.textColor = UIColor.darkGray
            labelDesk.layer.masksToBounds = true
            labelDesk.layer.cornerRadius = 5
            labelDesk.backgroundColor = UIColor.red
            labelDesk.textColor = UIColor.white
            labelDesk.textAlignment = .center
            imageView.contentMode = .scaleAspectFit
            imageView.image = images[i]
            
            if i == 0 {
                imageView.frame = CGRect(x: imageCoordinateX, y: 50, width: Int(imageWidth), height: Int(imageHeight))
                labelSale.attributedText = "20 000₽".strikeThrough()
                labelSale.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 50, width: Int(imageWidth), height: 15)
                labelPrice.text = "14 900₽"
                labelPrice.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 65, width: Int(imageWidth), height: 15)
                labelInfo.text = "Компьютер 1"
                labelInfo.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 80, width: Int(imageWidth), height: 30)
                labelDesk.text = "35%"
                labelDesk.frame = CGRect(x: imageCoordinateX + 125, y: Int(imageHeight) + 50, width: 40, height: 40)
            } else if i == 1 {
                imageView.frame = CGRect(x: imageCoordinateX, y: 50, width: Int(imageWidth), height: Int(imageHeight))
                labelSale.attributedText = "25 000₽".strikeThrough()
                labelSale.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 50, width: Int(imageWidth), height: 15)
                labelPrice.text = "18 900₽"
                labelPrice.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 65, width: Int(imageWidth), height: 15)
                labelInfo.text = "Компьютер 2"
                labelInfo.frame = CGRect(x: imageCoordinateX + 15, y: Int(imageHeight) + 80, width: Int(imageWidth), height: 30)
                labelDesk.text = "45%"
                labelDesk.frame = CGRect(x: imageCoordinateX + 125, y: Int(imageHeight) + 50, width: 40, height: 40)
            } else if i == 2 {
                imageView.frame = CGRect(x: imageCoordinateX, y: imageCoordinateY, width: Int(imageWidth), height: Int(imageHeight))
                labelSale.attributedText = "23 000₽".strikeThrough()
                labelSale.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight), width: Int(imageWidth), height: 15)
                labelPrice.text = "19 900₽"
                labelPrice.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight) + 15, width: Int(imageWidth), height: 15)
                labelInfo.text = "Компьютер 3"
                labelInfo.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight) + 30, width: Int(imageWidth), height: 30)
                labelDesk.text = "33%"
                labelDesk.frame = CGRect(x: imageCoordinateX + 125, y: imageCoordinateY + Int(imageHeight), width: 40, height: 40)
            } else if i == 3 {
                imageView.frame = CGRect(x: imageCoordinateX, y: imageCoordinateY, width: Int(imageWidth), height: Int(imageHeight))
                labelSale.attributedText = "26 000₽".strikeThrough()
                labelSale.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight), width: Int(imageWidth), height: 15)
                labelPrice.text = "20 900₽"
                labelPrice.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight) + 15, width: Int(imageWidth), height: 15)
                labelInfo.text = "Компьютер 4"
                labelInfo.frame = CGRect(x: imageCoordinateX + 15, y: imageCoordinateY + Int(imageHeight) + 30, width: Int(imageWidth), height: 30)
                labelDesk.text = "45%"
                labelDesk.frame = CGRect(x: imageCoordinateX + 125, y: imageCoordinateY + Int(imageHeight), width: 40, height: 40)
            }
            view.addSubview(imageView)
            view.addSubview(labelInfo)
            view.addSubview(labelPrice)
            view.addSubview(labelSale)
            view.addSubview(labelDesk)
        }
    }
}

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString =  NSMutableAttributedString(string: self)
        attributeString.addAttribute(
            NSAttributedString.Key.strikethroughStyle,
               value: NSUnderlineStyle.single.rawValue,
                   range:NSMakeRange(0,attributeString.length))
        return attributeString
    }
}
