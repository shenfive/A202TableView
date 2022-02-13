//
//  ContentTableViewCell.swift
//  A202TableView
//
//  Created by 申潤五 on 2022/2/13.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    @IBOutlet weak var phone: UILabel!
    
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
