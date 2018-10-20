//
//  MainView.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-20.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let testText: UILabel = {
        let text = UILabel()
        text.text = "HELLO WORLD"
        text.textColor = .red
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let backgroundImage: UIImageView = {
        let img = UIImageView();
        img.image = UIImage(named: "Main")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(ViewController.SubmitPicture), for: .touchUpInside)
        return button
    }()
    
    func setUpConstraints() {
        
        submitButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        submitButton.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        submitButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        submitButton.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        backgroundImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(submitButton)
        setUpConstraints()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
