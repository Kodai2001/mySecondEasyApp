//
//  ImageViewController.swift
//  ProjectTwo
//
//  Created by system on 2021/09/19.
//

import UIKit

class ImageViewController: UIViewController {
    
    var countNum: Int?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = ""
        showImage()
        
        //print(countNum!)
    }
    
    func showImage() {
        
        switch countNum {
        case 0:
            imageView.image = UIImage(named: "image1")
        case 20:
            imageView.image = UIImage(named: "image2")
        case 40:
            imageView.image = UIImage(named: "image3")
        case 60:
            imageView.image = UIImage(named: "image4")
        case 80:
            imageView.image = UIImage(named: "image5")
        case 100:
            imageView.image = UIImage(named: "image6")
        case 120:
            imageView.image = UIImage(named: "image7")
            textLabel.text = "Charge Kody if you want to see more"
        default:
            break
        }
        
        
    }
    
    
}
