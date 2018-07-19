//
//  YourScheduleViewController.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/19/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import UIKit

class YourScheduleViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

}
extension YourScheduleViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Protocol Stubs for UITableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 22
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SchedulingCell", for: indexPath) as? SchedulingTableViewCell{
            var amOrPm: String = (indexPath.row) < 13 ? "am" : "pm"
            cell.contentView.backgroundColor = UIColor(white: 0.95, alpha: 1)
            cell.timeLabel.text = "\(String(indexPath.row + 1)) \(amOrPm)"
            cell.commentLabel.isHidden = true
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
