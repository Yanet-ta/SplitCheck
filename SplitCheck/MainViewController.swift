//
//  ViewController.swift
//  SplitCheck
//
//  Created by Yana Ivanova on 07.12.16.
//  Copyright © 2016 Yana Ivanova. All rights reserved.
//

import UIKit
import AVFoundation
import MobileCoreServices

class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var captureSession = AVCaptureSession()
    var previewLayer = AVCaptureVideoPreviewLayer()
    var captureDevice: AVCaptureDevice?

  
    @IBOutlet var previewView: UIView!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBAction func didTakePhoto(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Take photo"
        //self.doneButton.isEnabled = false
        self.initCamera()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.previewLayer.frame = self.previewView.bounds;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        captureSession.startRunning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        captureSession.stopRunning()
    }
    
    func initCamera() {
        captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        do {
            let inputCaptureDevice = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(inputCaptureDevice)
        }
        catch {
            
        }
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        previewView.layer.addSublayer(previewLayer)
        previewLayer.frame = previewView.bounds
    }

}

