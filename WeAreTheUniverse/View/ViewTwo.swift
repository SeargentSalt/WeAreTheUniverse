//
//  ViewTwo.swift
//  WeAreTheUniverse
//
//  Created by Ajay Sharma on 2018-10-21.
//  Copyright © 2018 Waev. All rights reserved.
//

import UIKit

class ViewTwo: UIView {
    
    //var selectedPicturesArray = [UIImage.init(named: "Picture1"), UIImage.init(named: "Picture2")]
    /*
    public var imageCounter = Int()  {
        didSet{
            selectedImage.image = selectedPicturesArray[imageCounter]
        }
    }
 */
    
    
    
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Background")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(backgroundImage)
        SetupConstrains()
        
    }
    
    func SetupConstrains() {

        backgroundImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
