//
//  ViewController.swift
//  ESP8266_LED
//
//  Created by MBPr13 on 2018/2/9.
//  Copyright © 2018年 Jing-Ru Sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func on(_ sender: Any) {
        let url = URL(string: "http://172.20.10.3/gpio/1")
        let urlreq = NSURLRequest(url: url! as URL)
        web.loadRequest(urlreq as URLRequest)
    }
    

    @IBAction func off(_ sender: Any) {
        let url = URL(string: "http://172.20.10.3/gpio/0")
        let urlreq = NSURLRequest(url: url! as URL)
        web.loadRequest(urlreq as URLRequest)
    }
}

