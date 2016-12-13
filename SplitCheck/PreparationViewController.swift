//
//  PrepareForRecognitionViewController.swift
//  SplitCheck
//
//  Created by Yana Ivanova on 13.12.16.
//  Copyright © 2016 Yana Ivanova. All rights reserved.
//

import UIKit

class PreparationViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var chosenImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = chosenImage
    }


}
