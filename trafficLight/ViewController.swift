//
//  ViewController.swift
//  trafficLight
//
//  Created by Максим Зыкин on 17.10.2022.
//

import UIKit


enum CurrentLight {
    case red, yellow, green
}


class ViewController: UIViewController {

    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }

    
    @IBAction func startLightButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightOn
            yellowLight.alpha = lightOff
            currentLight = .red
        }
    }
    
}

