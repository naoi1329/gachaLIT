//
//  ViewController.swift
//  gacha
//
//  Created by 直井翔汰 on 2018/04/11.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mawasu(_ sender: UIButton) {
        self.performSegue(withIdentifier: "result", sender: nil)
    }
    
}

