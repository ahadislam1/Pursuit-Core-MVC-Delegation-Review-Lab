//
//  DetailViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Ahad Islam on 1/27/20.
//  Copyright © 2020 Benjamin Stone. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    
    weak var delegate: TextFontSizeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
