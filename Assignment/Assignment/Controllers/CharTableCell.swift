//
//  CharTableCell.swift
//  Assignment
//
//  Created by Rhytthm on 03/09/22.
//

import Foundation
import UIKit
class CharacterTableCell: UITableViewCell {
    
    @IBOutlet weak var CharacterImage: LazyImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
