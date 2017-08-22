//
//  ViewController.swift
//  TipCalc
//
//  Created by rach on 8/7/17.
//  Copyright © 2017 rach. All rights reserved.
//

import UIKit
let tipPercentSelection = [0.15, 0.18, 0.20]
let p = "%"

class ViewController: UIViewController {
    @IBOutlet weak var SegmentView: UIView!
    @IBOutlet weak var billAmount: UITextField!

    @IBOutlet weak var tipPercentDisplay: UILabel!
    @IBOutlet weak var tipSelected: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.billAmount.becomeFirstResponder()
        SegmentView.isHidden = false
        
        let defaults = UserDefaults.standard
        let tipIndex = defaults.integer(forKey: "tipPercentSelected")
               self.tipSelected.selectedSegmentIndex = tipIndex
       
     tipPercentDisplay.text = String(format: "%d%@", Int(tipPercentSelection[tipSelected.selectedSegmentIndex] * 100), p)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let defaults = UserDefaults.standard
        let tipIndex = defaults.integer(forKey: "tipPercentSelected")
        
        self.tipSelected.selectedSegmentIndex = tipIndex
     
       tipPercentDisplay.text = String(format: "%d%@", Int(tipPercentSelection[tipSelected.selectedSegmentIndex] * 100), p)
      self.onEditingChanged(self.tipSelected.selectedSegmentIndex)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.SegmentView.alpha=0
        UIView.animate(withDuration: 3, animations: {
        self.SegmentView.alpha=1
        })
        
    }
    
   
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        SegmentView.isHidden=true
        
    }
 
    
    @IBAction func onEditingChanged(_ sender: Any) {
        
        SegmentView.isHidden=false
        
        let defaults = UserDefaults.standard
        defaults.set(tipSelected.selectedSegmentIndex, forKey: "tipPercentSelected")
        defaults.synchronize()
    
        let billVal = Double(billAmount.text!) ?? 0
        let tipVal = billVal * tipPercentSelection[tipSelected.selectedSegmentIndex]
       
        let totalVal = billVal + tipVal
        
    
        let currencyFormatter = NumberFormatter()
        currencyFormatter.locale = Locale.current
        currencyFormatter.numberStyle = .currency
        
        tipPercentDisplay.text = String(format: "%d%@", Int(tipPercentSelection[tipSelected.selectedSegmentIndex] * 100), p)
        
         tipLabel.text = currencyFormatter.string(from: tipVal as NSNumber)
        totalAmount.text = currencyFormatter.string(from: totalVal as NSNumber)
    }
    }
