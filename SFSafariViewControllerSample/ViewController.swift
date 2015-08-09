//
//  ViewController.swift
//  SFSafariViewControllerSample
//
//  Created by shinobu okano on 2015/08/09.
//  Copyright © 2015年 shinobu okano. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        let sfc = SFSafariViewController(URL: NSURL(string: "http://www.google.com")!)
        sfc.delegate = self
        presentViewController(sfc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}

