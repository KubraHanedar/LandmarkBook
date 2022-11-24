//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Kübra Hanedar on 24.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("Collesium")
        landmarkNames.append("Notre-Dame Cathedral")
        landmarkNames.append("Buckingham Palace")
        landmarkNames.append("Empire State")
        landmarkNames.append("Golden Gate Bridge")
        
        landmarkImages.append(UIImage(named: "Collesium")!)
        landmarkImages.append(UIImage(named: "notre-dame-cathedral")!)
        landmarkImages.append(UIImage(named: "buckingham-palace")!)
        landmarkImages.append(UIImage(named: "empire-state")!)
        landmarkImages.append(UIImage(named: "golden-gate-bridge")!)
    
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVS = segue.destination as! DetailsVC
            destinationVS.selectedlandmarkName = chosenLandmarkName
            destinationVS.selectedLandmarkImage = chosenLandmarkImage
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade )
        }
    }
}

