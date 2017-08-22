//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by rach on 8/9/17.
//  Copyright © 2017 rach. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var selectedTipSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        let tipIndex = defaults.integer(forKey: "tipPercentSelected")
        self.selectedTipSegmentedControl.selectedSegmentIndex = tipIndex
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tipPercentChanged(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(selectedTipSegmentedControl.selectedSegmentIndex, forKey: "tipPercentSelected")
        defaults.synchronize()
           }
}
