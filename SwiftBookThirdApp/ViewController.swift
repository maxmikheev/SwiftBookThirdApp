//
//  ViewController.swift
//  SwiftBookThirdApp
//
//  Created by Максим Михеев on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider! {
        didSet{
            redSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet weak var greenSlider: UISlider! {
        didSet{
            greenSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet weak var blueSlider: UISlider! {
        didSet{
            blueSlider.tintColor = UIColor.blue
        }
    }
    
    func changeViewColor() {
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSliders(_ sender: Any) {
        changeViewColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

