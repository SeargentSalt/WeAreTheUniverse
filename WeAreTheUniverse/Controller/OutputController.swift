//
//  OutputController.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-21.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class OutputController: UIViewController {
    
    let output:UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "Final1")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let background: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "SharePage")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(background)

        view.addSubview(output)
        SetupConstraints()
    }
    
    func SetupConstraints() {
        
        output.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        output.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        output.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        output.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 120).isActive = true
        
        background.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}
