//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Kübra Hanedar on 24.11.2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var landmarkLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedlandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedlandmarkName
        imageView.image = selectedLandmarkImage
        
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
