//
//  ViewController.swift
//  UIDatePicker countDownTimer Issue
//
//  Created by Seth Battis on 7/30/17.
//  Copyright © 2017 Seth Battis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eventsCount: UILabel!
    @IBOutlet weak var changesCount: UILabel!
    @IBOutlet weak var currentValue: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var changeCounter = 0
    var eventCounter = 0
    
    let formatter = DateComponentsFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .full
        updateLabels()
        
        datePicker.addTarget(self, action: #selector(ViewController.handleDatePickerAllEvents), for: UIControlEvents.allEvents)
    }
    
    func updateLabels() {
        eventsCount.text = String(describing: eventCounter)
        changesCount.text = String(describing: changeCounter)
        currentValue.text = formatter.string(from: datePicker.countDownDuration)
    }
    
    @IBAction func handleDatePickerValueChanged(_ sender: UIDatePicker) {
        changeCounter += 1
        updateLabels()
    }
    
    func handleDatePickerAllEvents(_ sender: UIDatePicker) {
        eventCounter += 1
        updateLabels()
    }
}

