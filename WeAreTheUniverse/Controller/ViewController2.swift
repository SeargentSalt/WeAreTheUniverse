//
//  ViewController2.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-20.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var imageCount = 0
    func img() {
        if selectedImage.image == UIImage(named: "Picture2") {
            selectedImage.image = UIImage(named: "Picture1")
        }
        else {
            selectedImage.image = UIImage(named: "Picture2")
        }
        
    }
    
    let loading: UILabel = {
       let lbl = UILabel()
        lbl.text = "LOADING..."
        lbl.font = UIFont.systemFont(ofSize: 45)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let size = CGRect.init(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        view.addSubview(ViewTwo(frame: size))
        view.addSubview(selectedImage)
        view.addSubview(loading)
        img()
        SetupConstraints()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            let next:OutputController = OutputController()
            let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.partialCurl
            next.modalTransitionStyle = modalStyle
            self.present(next, animated: true, completion: nil)
        })
    }
    
    let selectedImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "Picture2")
        return img
    }()
    
    func SetupConstraints () {
        selectedImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selectedImage.bottomAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        selectedImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selectedImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        loading.topAnchor.constraint(equalTo: selectedImage.bottomAnchor).isActive = true
    }
    

    
}
