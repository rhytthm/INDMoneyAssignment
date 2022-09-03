//
//  DetailVC.swift
//  Assignment
//
//  Created by Rhytthm on 03/09/22.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var DetailedImageView: UIImageView!
    
    @IBOutlet weak var CharacterName: UILabel!
    
    @IBOutlet weak var CharacterDescription: UILabel!
    
    var imageURL = ""
    var Title = ""
    var Description = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: imageURL)
        CharacterName.text = Title
        CharacterDescription.text = Description
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!) //makeing sure image in this url does exist, otherwise unwrap in a if let check
            DispatchQueue.main.async {
                self.DetailedImageView.image = UIImage(data: data!)
            }
        }
    }
   

}
