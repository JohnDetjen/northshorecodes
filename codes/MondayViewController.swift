//
//  MondayViewController.swift
//  codes
//
//  Created by John Detjen on 12/4/17.
//  Copyright © 2017 FinleyKnight, Inc. All rights reserved.
//

import UIKit

class MondayViewController: UIViewController {
    
    // Button Outlets
    @IBOutlet weak var newProject: UIButton!
    @IBOutlet weak var appDelegate: UIButton!
    @IBOutlet weak var appIcon: UIButton!
    @IBOutlet weak var embedTabBar: UIButton!
    @IBOutlet weak var tabBarIconAndNames: UIButton!
    @IBOutlet weak var embedNavigationController: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var cocoaTouchClassFile: UIButton!
    @IBOutlet weak var buttonShape: UIButton!
    @IBOutlet weak var cocoaPods: UIButton!
    @IBOutlet weak var splashScreen: UIButton!
    @IBOutlet weak var gitHub: UIButton!
    @IBOutlet weak var terminal: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.layer.zPosition = 0
        
        //Edit Buttons Shape
        newProject.layer.cornerRadius = 5
        newProject.clipsToBounds = true
        appDelegate.layer.cornerRadius = 5
        appDelegate.clipsToBounds = true
        appIcon.layer.cornerRadius = 5
        appIcon.clipsToBounds = true
        embedTabBar.layer.cornerRadius = 5
        embedTabBar.clipsToBounds = true
        tabBarIconAndNames.layer.cornerRadius = 5
        tabBarIconAndNames.clipsToBounds = true
        embedNavigationController.layer.cornerRadius = 5
        embedNavigationController.clipsToBounds = true
        addButton.layer.cornerRadius = 5
        addButton.clipsToBounds = true
        cocoaTouchClassFile.layer.cornerRadius = 5
        cocoaTouchClassFile.clipsToBounds = true
        buttonShape.layer.cornerRadius = 5
        buttonShape.clipsToBounds = true
        cocoaPods.layer.cornerRadius = 5
        cocoaPods.clipsToBounds = true
        splashScreen.layer.cornerRadius = 5
        splashScreen.clipsToBounds = true
        gitHub.layer.cornerRadius = 5
        gitHub.clipsToBounds = true
        terminal.layer.cornerRadius = 5
        terminal.clipsToBounds = true

    }
    
    //IBAction connects to every button
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let mondayDetailsVC = storyboard?.instantiateViewController(withIdentifier: "mondayDetailsVCIdentifier") as? TextDetailsViewController {
            mondayDetailsVC.buttonTag = sender.tag
            self.navigationController?.pushViewController(mondayDetailsVC, animated: true)
        }
    }
}
