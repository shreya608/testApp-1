//
//  ViewController.swift
//  FaithInDailyLife
//
//  Created by Shreya Shresth on 24.04.20.
//  Copyright © 2020 Shreya Shresth. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("are we here?")
        // Do any additional setup after loading the view.
    }

    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        print("button got tapped")
        let storyboard = UIStoryboard(name: "startPlanning", bundle: Bundle(for: startPlanningViewController.self))
        let startPlanningVC = storyboard.instantiateViewController(identifier:("startPlanningViewController"))
        self.present(startPlanningVC, animated: true, completion: nil)
        
        
        //self.performSegue(withIdentifier: "goTostartPlanning", sender: self)
        
        // let startPlanning = startPlanningViewController()
        
        //self.present(startPlanning, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func encouragementButtonPressed(_ sender: UIButton) {
        print("encoragement button pressed")
    }
    
}


