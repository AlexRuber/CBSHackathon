//
//  SchedulingTableViewCell.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/19/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import UIKit

class SchedulingTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
