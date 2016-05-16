//
//  ViewController.swift
//  EVURLCache
//
//  Created by Edwin Vermeer on 11/7/15.
//  Copyright © 2015 evict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func CleanCache(sender: AnyObject) {
        NSLog("removing....") ;
        print("Hello world");
        EVURLCache.removeAllCaches();
    }
    
    

    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = NSURL(string: "http://www.horariodebrasilia.org/") {
        //if let url = NSURL(string: "http://evict.nl") {
            NSLog("navigating to \(url)")
            webView.loadRequest(NSURLRequest(URL: url))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

