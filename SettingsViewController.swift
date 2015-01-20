//
//  SettingsViewController.swift
//  Tips
//
//  Created by Bibhrajit Halder on 1/18/15.
//  Copyright (c) 2015 Bibhrajit Halder. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet var defaultTipPercentage: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaultTip = 15.0
        defaultTip = (defaultTipPercentage.text as NSString).doubleValue
        
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(defaultTip, forKey: "Default_Tip")
        defaults.synchronize()
        

    }
    

    @IBAction func setDefault(sender: AnyObject) {
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var defaultValue = defaults.doubleForKey("Default_Tip")
        println("test this \(defaultValue)")
        }
    
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
