//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by phoenix on 10/30/14.
//  Copyright (c) 2014 phoenix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel : UILabel!
    @IBOutlet weak var fathrenheitlabel : UILabel!
    @IBOutlet weak var kelvinLabel : UILabel!
    @IBOutlet weak var tempertureSlider : UISlider!
    @IBAction func temperatureSliderChanged(sender:UISlider){
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays() {
        var c = self.tempertureSlider.value;
        var f = (c * 9 / 5)  + 32
        var k = c + 273.15
        self.celsiusLabel.text = String(format: "%.1fC", arguments: [c])
        self.fathrenheitlabel.text = String(format: "%.1fF", arguments: [f])
        self.kelvinLabel.text = String(format: "%.1fK", arguments: [k])
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let screen = UIScreen.mainScreen()
        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
        println("screen bounds: \(screen.bounds)")
        println("top layout guide: \(topLayoutGuide.length)")
    }
    

}

