//
//  ViewController.swift
//  ProjectBG
//
//  Created by Eziz on 18.05.25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundIndicator: UILabel!
    
    @IBOutlet weak var switchIndicator: UILabel!
    
    @IBOutlet weak var backgroundSwitch: UISwitch!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = UIImage(named: "bg2")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        
        backgroundSwitch.isOn = false
        
        switchIndicator.textColor = UIColor.black
        switchIndicator.text = "Tap switch to replace the background image"
        
        backgroundIndicator.textColor = UIColor.black
        backgroundIndicator.text = "Background image: BMW M5 CS"
    }
      
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
          if backgroundSwitch.isOn {
              backgroundIndicator.text = "Background image: BMW i8"
              backgroundImage.image =  UIImage(named: "bg1")
          } else {
              backgroundIndicator.text = "Background image: BMW M5 CS"
              backgroundImage.image =  UIImage(named: "bg2")
          }
      }
  }
