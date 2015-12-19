//
//  ViewController.swift
//  Deep Linker
//
//  Created by Eric on 12/19/15.
//  Copyright © 2015 Simple Guy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func onTapBtn(sender: UIButton) {
    guard let id = sender.titleLabel?.text else { return }
    let url = NSURL(string: "waitress://place/\(id)")!
    print("Opening url `\(url)`")
    UIApplication.sharedApplication().openURL(url)
  }

}

