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

    enum ColorOfLight {

    case  redLight
    case  yellowLight
    case  greenLight
    case  noLight
}
   
    var color = -1
   
    var arrayOfColor = [ColorOfLight.redLight, ColorOfLight.yellowLight, ColorOfLight.greenLight, ColorOfLight.noLight]


    @IBAction func startButton(_ sender: UIButton){
         color += 1
        let currentLight = arrayOfColor[color % 4]
        
        switch currentLight {
        case .redLight:
            
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            redLight.alpha = 1
            startPressed.setTitle("NEXT", for: .normal)
        case .yellowLight:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case .greenLight:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        case .noLight:
            redLight.alpha = 0.3
            greenLight.alpha = 0.3
            yellowLight.alpha = 0.3
            startPressed.setTitle("START", for: .normal)
        }
    }
    
}
      /*
        if redLight.alpha == 1{
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        startPressed.setTitle("NEXT", for: .normal)
    
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1{
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }else{
            redLight.alpha = 1
        }
    }
}*/
    
       
