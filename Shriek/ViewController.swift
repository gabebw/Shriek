//
//  ViewController.swift
//  Shriek
//
//  Created by Gabe Berke-Williams on 4/3/15.
//  Copyright (c) 2015 gabebw, inc. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var tweetField: NSTextField!
    @IBOutlet weak var responseField: NSTextField!

    @IBAction func tweet(sender: NSButton) {
        let tweet = tweetField.stringValue;
        let responder = Responder(text: tweet);
        let response = responder.respond();
        responseField.stringValue = response;
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

