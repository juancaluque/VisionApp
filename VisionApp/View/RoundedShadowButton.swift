//
//  RoundedShadowButton.swift
//  VisionApp
//
//  Created by Juan Luque on 2/10/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = (self.frame.height / 2)
    }
}
