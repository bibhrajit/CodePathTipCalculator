//
//  ViewController.swift
//  Tips
//
//  Created by Bibhrajit Halder on 1/14/15.
//  Copyright (c) 2015 Bibhrajit Halder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var tipControl: UISegmentedControl!
    
    @IBOutlet var tiplabel: UILabel!
    
    @IBOutlet var totallabel: UILabel!
    
    @IBOutlet var BillAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func EditingChange(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var defaultValue = defaults.doubleForKey("Default_Tip")
        
        var tipPercentage = defaultValue
  
        tipPercentage = tipPercentages [tipControl.selectedSegmentIndex]
        var billamount = (BillAmount.text as NSString).doubleValue
        var tip =  billamount * tipPercentage
        var total = billamount + tip
    
        tiplabel.text = " $ \(tip)"
        totallabel.text = "$ \(total)"
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
      
        
    
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        BillAmount.resignFirstResponder()
        return true
    }
    


}

