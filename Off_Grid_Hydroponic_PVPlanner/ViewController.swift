//
//  ViewController.swift
//  Off_Grid_Hydroponic_PVPlanner
//
//  Created by Matsu Thornton on 10/2/16.
//  Copyright © 2016 REDLab UH Manoa. All rights reserved.
//

import Cocoa



class ViewController: NSViewController {
//MARK: properties
    
    @IBOutlet weak var cont_load_text_field: NSTextField!

    @IBOutlet weak var sun_hours_text_field: NSTextField!
    @IBOutlet weak var min_pv_size_label: NSTextField!
    @IBOutlet weak var battery_size_label: NSTextField!
    @IBOutlet weak var batt12: NSTextField!
    @IBOutlet weak var batt24: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
 
    @IBAction func contload_change(_ sender: NSTextField) {
        let contload = atof(cont_load_text_field.stringValue)
        let sunhours = atof(sun_hours_text_field.stringValue)
        let minpvsize = (contload*24)/(sunhours*0.7)
        let battsize = contload*(24-sunhours)*2
        let batt12_calc = battsize/12
        let batt24_calc = battsize/24
        min_pv_size_label.stringValue = String(format: "%.2f",minpvsize)
        battery_size_label.stringValue = String(format: "%.2f",battsize)
        batt12.stringValue = String(format: "%.2f",batt12_calc)
        batt24.stringValue = String(format: "%.2f",batt24_calc)

    }

    @IBAction func calculate(_ sender: NSButtonCell) {
        let contload = atof(cont_load_text_field.stringValue)
        let sunhours = atof(sun_hours_text_field.stringValue)
        let minpvsize = (contload*24)/(sunhours*0.7)
        let battsize = contload*(24-sunhours)*2
        let batt12_calc = battsize/12
        let batt24_calc = battsize/24
        min_pv_size_label.stringValue = String(format: "%.2f",minpvsize)
        battery_size_label.stringValue = String(format: "%.2f",battsize)
        batt12.stringValue = String(format: "%.2f",batt12_calc)
        batt24.stringValue = String(format: "%.2f",batt24_calc)
    }


}

