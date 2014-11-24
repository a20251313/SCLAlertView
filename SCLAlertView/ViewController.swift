//
//  ViewController.swift
//  SCLAlertView
//
//  Created by jingfuran on 14/11/21.
//  Copyright (c) 2014年 jingfuran. All rights reserved.
//

import UIKit


let  kSuccessTitle = "Congratulations";
let  kErrorTitle = "Connection error";
let  kNoticeTitle = "Notice";
let  kWarningTitle = "Warning";
let  kInfoTitle = "Info";
let  kSubtitle = "You've just displayed this awesome Pop Up View";
let  kButtonTitle = "Done";
let  kAttributeTitle = "Attributed string operation successfully completed.";


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func clickSuccess(sender: AnyObject)
    {
        var alert = SCLAlertView();
        alert.addButton("First BUtton", target: self, selector: "clickButton");
        alert.addButton("Second Button", target: self, selector: "clickButton");
        alert.showError(self, title: kSuccessTitle, subTitle: kAttributeTitle, closeButton: "Done", duration: 0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func clickButton()
    {
        println("clickButton");
    }


}

