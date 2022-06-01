//
//  ViewController.swift
//  ColorPicker
//
//  Created by Виталий Усольцев on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var red: Int = 0
    var green: Int = 0
    var blue: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 0
        redSlider.tag = 0
        greenSlider.tag = 1
        blueSlider.tag = 2
    }

    @IBAction func setColor(_ sender: UISlider) {
        setColorForView()
        
        switch sender.tag {
        case 0: redColorLabel.text = textSliderValue(from: sender.value)
        case 1: greenColorLabel.text = textSliderValue(from: sender.value)
        case 2: blueColorLabel.text = textSliderValue(from: sender.value)
        default: break
        }
        
    }
    
    func setColorForView() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    func textSliderValue(from value: Float) -> String {
        return String(Int(value))
    }
    
    
    // MARK: Easiest solution
    
    /*    @IBAction func redSliderChanged(_ sender: UISlider) {
            red = Int(sender.value)
            redColorLabel.text = "\(red)"
            viewColor.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
        }
    
        @IBAction func greenSliderChanged(_ sender: UISlider) {
            green = Int(sender.value)
            greenColorLabel.text = "\(green)"
            viewColor.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
        }
    
        @IBAction func blueSliderChanged(_ sender: UISlider) {
            blue = Int(sender.value)
            blueColorLabel.text = "\(blue)"
            viewColor.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
        }
    */
}

