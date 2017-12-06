//
//  MondayDetailsViewController.swift
//  codes
//
//  Created by John Detjen on 12/5/17.
//  Copyright © 2017 FinleyKnight, Inc. All rights reserved.
//

import UIKit
import Parse

class TextDetailsViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var textDetailsLabel: UILabel!
    @IBOutlet weak var textTitleLabel: UILabel!
    
    
    //variable for different button tag options
    var buttonTag = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call loadData function
        loadData()
    }
    
    func loadData() {
        let query = PFQuery(className: "textDetails")
        query.limit = 1000

        query.whereKey("buttonTag", equalTo: self.buttonTag)
        query.findObjectsInBackground { (objects, error) in
            if let theObjects = objects {
                let buttonDetails = theObjects.first
                self.textDetailsLabel.text = buttonDetails?.object(forKey: "curriculumText") as? String
                self.textTitleLabel.text = buttonDetails?.object(forKey: "curriculumTitle") as? String
            }
        }
    }
}
