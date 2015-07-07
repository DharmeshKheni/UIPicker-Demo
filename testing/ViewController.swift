//
//  ViewController.swift
//  testing
//
//  Created by Anil on 07/07/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colors = ["Red","Yellow","Green","Blue"]
    var newArray = [String]()
    var selectedValue = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return colors[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        selectedValue = colors[row]
    }

    @IBAction func next(sender: AnyObject) {
        newArray.append(selectedValue)
        println(newArray)
    }
}

