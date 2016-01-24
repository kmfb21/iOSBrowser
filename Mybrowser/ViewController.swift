//
//  ViewController.swift
//  Mybrowser
//
//  Created by 博 方 on 15/10/7.
//  Copyright © 2015年 博 方. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var wv:UIWebView?
    
    @IBOutlet var btn:UIButton?
    
    @IBOutlet var url:UITextField?
    
    //主页
    var str = "http://baidu.com"
    
    //跳转任意网页
    @IBAction func btnClicked(sender:AnyObject){
        str = (url?.text)!
        wv?.loadRequest(NSURLRequest(URL: NSURL(string: str)!))
        url?.resignFirstResponder()
    }
    //IU主页
    @IBAction func IUB(sender:AnyObject){
        url!.text = "https://one.iu.edu"
        str = (url?.text)!
        wv?.loadRequest(NSURLRequest(URL: NSURL(string: str)!))
        url?.resignFirstResponder()
    }
    //Silo
    @IBAction func silo(sender:AnyObject){
        url!.text = "http://silo.soic.indiana.edu:10006"
        str = (url?.text)!
        wv?.loadRequest(NSURLRequest(URL: NSURL(string: str)!))
        url?.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        NSThread.sleepForTimeInterval(1.0)//延长3秒
        url!.text = "http://baidu.com"
        super.viewDidLoad()
        wv?.loadRequest(NSURLRequest(URL: NSURL(string: str)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

