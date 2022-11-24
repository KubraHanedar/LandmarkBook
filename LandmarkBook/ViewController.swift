//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Kübra Hanedar on 24.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("Collesium")
        landmarkNames.append("Notre-Dame Cathedral")
        landmarkNames.append("Buckingham Palace")
        landmarkNames.append("Empire State")
        landmarkNames.append("Golden Gate Bridge")
        
        var landmarkImages = [UIImage]()
        landmarkImages.append(UIImage(named: "Collesium")!)
        landmarkImages.append(UIImage(named: "notre-dame-cathedral")!)
        landmarkImages.append(UIImage(named: "buckingham-palace")!)
        landmarkImages.append(UIImage(named: "empire-state")!)
        landmarkImages.append(UIImage(named: "golden-gate-bridge")!)
       

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = "test"
        //content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
}

