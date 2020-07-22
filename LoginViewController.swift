//
//  LoginViewController.swift
//  practiceFour
//
//  Created by Rochish Ambati on 10/24/15.
//  Copyright © 2015 Rochish Ambati. All rights reserved.
//

import UIKit
import Lock
import SimpleKeychain

class MyApplication: NSObject {
    static let sharedInstance = MyApplication()
    let lock: A0Lock
    let keychain: A0SimpleKeychain
    private override init() {
        lock =  A0Lock()
        keychain = A0SimpleKeychain(service: "Auth0")
    }
}

class LoginViewController: UIViewController {

    @IBAction func showHome() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lock = MyApplication.sharedInstance.lock
        let controller = A0LockViewController()
        controller.closable = true
        controller.onAuthenticationBlock = { (profile, token) in
            let keychain = MyApplication.sharedInstance.keychain
            keychain.setString(token!.idToken, forKey: "id_token")
            keychain.setString(token!.refreshToken, forKey: "refresh_token")
            keychain.setData(NSKeyedArchiver.archivedDataWithRootObject(profile!), forKey: "profile")
            self.dismissViewControllerAnimated(true, completion: nil)
            //self.performSegueWithIdentifier("showProfile", sender: self)
        }
        self.presentViewController(controller, animated: true, completion: nil)
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
