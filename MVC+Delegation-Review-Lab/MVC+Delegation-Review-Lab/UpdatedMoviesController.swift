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
    
    var sliderFont: Float = 17.0 {
    didSet {
        updatedLabel.text = "Font Size : \(Int(theSlider.value))"
    }
    }
    
    
    var font: Double = 17.0 {
        didSet {
            updatedLabel.text = "Font Size: \(Int(theStepper.value))"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        configuredStepper()
        configuredSlider()
    }
    
    func configuredStepper() {
          theStepper.minimumValue = 1
          theStepper.maximumValue = 45
          theStepper.stepValue = 1
          theStepper.value = 17
      }
    
    func configuredSlider() {
        theSlider.minimumValue = 1
        theSlider.maximumValue = 45
        theSlider.value = 17
    }

    @IBAction func theFunction(_ sender: UIStepper) {
        font = sender.value
        updatedLabel.font = UIFont.systemFont(ofSize: CGFloat(theStepper!.value))
        theSlider.value = Float(theStepper.value)
        
    }
    
    @IBAction func theSliderAction(_ sender: UISlider) {
        sliderFont = sender.value
        updatedLabel.font = UIFont.systemFont(ofSize: CGFloat(theSlider!.value))
    }
    
    
    
}
