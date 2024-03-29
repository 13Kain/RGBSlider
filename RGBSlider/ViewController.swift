//
//  ViewController.swift
//  RGBSlider
//
//  Created by Никита on 09.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 15
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    

    @IBAction func redSliderChange() {
        redValue.text = String(format: "%.2f", redSlider.value)
    }
    @IBAction func greenSliderChange() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
    }
    @IBAction func blueSliderChange() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
     
    
    @IBAction func rgbViewChange(_ sender: UISlider) {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}



