//
//  aboutViewController.swift
//  BullsEye
//
//  Created by Joseph Leiferman on 3/21/16.
//  Copyright © 2016 electricBrain. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {

    @IBAction func close() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html") {
            if let htmlData = NSData(contentsOfFile: htmlFile) {
                let baseURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
            
        }
    }

}
