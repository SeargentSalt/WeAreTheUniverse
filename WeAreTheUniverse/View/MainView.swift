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
    
    func setUpConstraints() {
        testText.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        testText.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(testText)
        setUpConstraints()
        self.backgroundColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
