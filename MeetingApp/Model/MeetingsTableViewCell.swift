//
//  MeetingsTableViewCell.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/18/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import UIKit

class MeetingsTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var roomTitleLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var currentOccupantLabel: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpUI()
    }
    
    private func setUpUI() {
        statusView.clipsToBounds = true
        statusView.layer.cornerRadius = 24
        statusView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        actionButton.layer.cornerRadius = 10
        actionButton.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
