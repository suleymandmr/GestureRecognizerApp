 //
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by eyüp yaşar demir on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isCakal = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic() {
       
        
        if isCakal == true{
            imageView.image = UIImage(named: "reckoll")
            myLabel.text = "Reckol"
            isCakal = false
        }else {
            imageView.image = UIImage(named: "cakal")
            myLabel.text = "Cakal"
            isCakal = true
        }
        
        
        
    }
    

}

