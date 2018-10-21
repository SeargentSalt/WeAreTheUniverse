//
//  ViewController2.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-20.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var x = 0
    
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Background")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let selectedImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "selectedImage_" + x)
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        x++
        view.addSubview(backgroundImage)
        SetupConstrains()
    }
    
    func SetupConstrains() {
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}
