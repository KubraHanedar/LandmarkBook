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
    

   

}
