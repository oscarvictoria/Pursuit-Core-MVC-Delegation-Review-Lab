//
//  UpdatedMoviesController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Oscar Victoria Gonzalez  on 11/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class UpdatedMoviesController: UIViewController {

    @IBOutlet weak var updatedLabel: UILabel!
    @IBOutlet weak var theSlider: UISlider!
    @IBOutlet weak var theStepper: UIStepper!
    
    var font: Double = 17.0 {
        didSet {
            updatedLabel.text = "Font Size: \(theStepper.value)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        configuredStepper()
    }
    
    func configuredStepper() {
          theStepper.minimumValue = 1
          theStepper.maximumValue = 45
          theStepper.stepValue = 1
          theStepper.value = 17
      }

    @IBAction func theFunction(_ sender: UIStepper) {
        font = sender.value
    }
    
    
    
}
