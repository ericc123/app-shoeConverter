//
//  ViewController.swift
//  ShoeConverter
//
//  Created by eric j chen on 11/19/14.
//  Copyright (c) 2014 Eric Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensShoeSizeConvertedLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeConvertedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensShoeSizeConvertedLabel.hidden = false
        mensShoeSizeConvertedLabel.text = "\(sizeFromTextField + conversionConstant) in European Size"
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let sizeFromWomensTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let womensConvesionConstant:Double = 30.5
        
        womensShoeSizeConvertedLabel.hidden = false
        womensShoeSizeConvertedLabel.text = "\(sizeFromWomensTextField + womensConvesionConstant) in European Size"
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
        
    }


}

