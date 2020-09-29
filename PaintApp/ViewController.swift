//
//  ViewController.swift
//  PaintApp
//
//  Created by Madina Tazhiyeva on 9/27/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: CustomView!
    @IBOutlet weak var segmControl: UISegmentedControl!
    
    @IBAction func buttonPressed(_ sender: UIButton){
        customView.shape = sender.currentTitle!
    }
    
    @IBAction func colorPicker(_ sender: UIButton) {
        customView.color = sender.backgroundColor!
    }
    
    @IBAction func undoBtn(_ sender: UIButton) {
        customView.removeLastItem()
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        customView.removeAllItems()
    }
    
    @IBAction func isFilled(_ sender: UISegmentedControl) {
       switch segmControl.selectedSegmentIndex {
       case 0: customView.isFilled = true
       case 1: customView.isFilled = false
       default: break;
       }
    }
    
    @IBAction func savePicture(_ sender: Any) {
    }
    
    override func viewDidLoad() {
         super.viewDidLoad()
    }
}


extension Double{
    var cg: CGFloat{
        return CGFloat(self)
    }
    
}


