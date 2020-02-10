//
//  ViewController.swift
//  VisionApp
//
//  Created by Juan Luque on 2/10/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit
import AVFoundation

class CameraVC: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var captureImageView: RoundShadowImageView!
    @IBOutlet weak var flashBtn: RoundedShadowView!
    @IBOutlet weak var identificationLbl: UILabel!
    @IBOutlet weak var confidenceLbl: UILabel!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var roundedLblView: RoundedShadowView!
    
    //MARK: VARIABLES
    var captureSession: AVCaptureSession! //Central hub, real time caption.
    var cameraOutput: AVCapturePhotoOutput!//Allow camera caption
    var previewLayer: AVCaptureVideoPreviewLayer!//Shows the camera
    
    //MARK: LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        previewLayer.frame = cameraView.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        captureSession = AVCaptureSession()
        captureSession.sessionPreset = AVCaptureSession.Preset.hd1920x1080
        
        let backCamera = AVCaptureDevice.default(for: AVMediaType.video)
        do {
            let input = try AVCaptureDeviceInput(device: backCamera!)
            if captureSession.canAddInput(input) == true {
                captureSession.addInput(input)
            }
            
            cameraOutput = AVCapturePhotoOutput()
            
            if captureSession.canAddOutput(cameraOutput) == true {
                captureSession.addOutput(cameraOutput)
                
                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
                previewLayer.videoGravity = AVLayerVideoGravity.resizeAspect
                previewLayer.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
                
                cameraView.layer.addSublayer(previewLayer)
                captureSession.startRunning()
            }
            
            
            
        } catch {
            debugPrint(error.localizedDescription)
        }
        
        
        
    }


}

