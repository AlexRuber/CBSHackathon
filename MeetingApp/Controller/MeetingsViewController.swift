//
//  MeetingsViewController.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/18/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import UIKit


class MeetingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        tableView.separatorColor = UIColor(white: 0.95, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        self.tableView.backgroundColor = UIColor.clear
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Methods
    
    
}

extension MeetingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Protocol Stubs for UITableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        // Daniel - meetings will be an array of meetings
        // return meetings.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MeetingsTableCell", for: indexPath) as? MeetingsTableViewCell {
            cell.contentView.backgroundColor = UIColor(white: 0.95, alpha: 1)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
}
