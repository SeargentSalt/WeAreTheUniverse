//
//  SplashScreen.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-20.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class SplashScreen: UIViewController {
    
    let SplashPicture: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "SplashScreen")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(SplashPicture)
        SetupConstraints()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            let next:ViewController = ViewController()
            //let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.partialCurl
            //next.modalTransitionStyle = modalStyle
            self.present(next, animated: true, completion: nil)
        })
    
    }
    
    func SetupConstraints(){
        SplashPicture.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        SplashPicture.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        SplashPicture.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        SplashPicture.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
