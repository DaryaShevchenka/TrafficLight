//
//  ViewController.swift
//  TrafficLight
//
//  Created by Darya Drobyshevsky on 4/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var startPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }


    @IBAction func startButton(_ sender: UIButton) {
        redLight.alpha = 1
        startPressed.setTitle("NEXT", for: .normal)
        
      
            
            
            
            
        }
        }
       
        


