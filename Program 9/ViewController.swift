//
//  ViewController.swift
//  Program 9
//
//  Created by Jake McCormick on 4/29/20.
//  Copyright © 2020 Jake McCormick. All rights reserved.
//

import UIKit
import WebKit
import MessageUI

class ViewController:UIViewController,MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
    }
    
    @IBOutlet weak var webview: WKWebView!
    @IBAction func openSite(_ sender: Any) {
        
        if URL( string: "https://www.zmenu.com/pizza-wagon-smock-online-menu/") != nil{
            UIApplication.shared.open(url, option: [:])
        }
    }
    
    
    @IBAction func sendSMS(_ sender: Any) {
    
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        composeVC.recipients = ["813435176744"]
        composeVC.body = "Hello, This message is being sent from my app."
        if MFNMessageComposeViewController.canSendText()
        {
            self.presentcomposeVC;animated;: true, completion:nil
            
        } else {
            print("Cant send Message")
            
        }
        
        
        
    }
    
    let  myURL = URL(string:"https://www.zmenu.com/pizza-wagon-smock-online-menu/")
    let myRequest = URLRequest(url: myURL!)
    
    webView.load(myrequest)
  
    
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

