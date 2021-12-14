//
//  DataTableViewCell.swift
//  Turk_cuisineApp
//
//  Created by user on 14/12/21.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var nameFood: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let data = DataLoader().foodDatas
        print(data)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
