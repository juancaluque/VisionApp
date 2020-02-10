//
//  ViewController.swift
//  VisionApp
//
//  Created by Juan Luque on 2/10/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var captureImageView: RoundShadowImageView!
    @IBOutlet weak var flashBtn: RoundedShadowView!
    @IBOutlet weak var identificationLbl: UILabel!
    @IBOutlet weak var confidenceLbl: UILabel!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var roundedLblView: RoundedShadowView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

