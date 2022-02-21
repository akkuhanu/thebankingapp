//
//  TableViewCell1.swift
//  tableview
//
//  Created by AKASH JAIN on 19/02/22.
//

import UIKit

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var amt: UILabel!
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var to: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
