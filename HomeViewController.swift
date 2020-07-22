//
//  HomeViewController.swift
//  practiceFour
//
//  Created by Rochish Ambati on 10/24/15.
//  Copyright © 2015 Rochish Ambati. All rights reserved.
//

import UIKit
import Lock

class HomeViewController: UIViewController {

    let grayColor = UIColor(
        red:32.0,
        green:32.0,
        blue:32.0,
        alpha:1.0)
    
    
    @IBAction func scheduleButton(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.pamf.org/")!)
        
    }
    
    @IBAction func contactButton() {
    }
    
    
    @IBAction func learnButton() {
    }
    
    @IBAction func monitorButton() {
    }
    
    @IBAction func analyzeButton() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
