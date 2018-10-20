//
//  ViewController.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-20.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let size = CGRect.init(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        view.addSubview(MainView(frame: size))
    }
    
    @objc func SubmitPicture() {
        print("hi")
    }


}

