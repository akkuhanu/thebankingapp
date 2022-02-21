//
//  TableViewCell.swift
//  tableview
//
//  Created by AKASH JAIN on 18/02/22.
//

import UIKit

class TableViewCell: UITableViewCell {
   
    @IBOutlet weak var ccnt: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
