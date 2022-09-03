//
//  TableViewCell.swift
//  Assignment
//
//  Created by Rhytthm on 03/09/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CharacterImg: LazyImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // setting image as a circular and adding border
        CharacterImg.layer.cornerRadius = CharacterImg.frame.size.width / 2
        CharacterImg.layer.borderWidth = 3
        CharacterImg.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCell(character:Character){
        self.lblTitle.text = character.title
        self.lblDescription.text = character.description
        
        // Here there can be a case of eager Loading
        let CharacterImageUrl = URL(string: (character.imgUrl))!
        self.CharacterImg .loadImage(fromURL: CharacterImageUrl, placeHolderImage: "Loading Image!")
    }

}
