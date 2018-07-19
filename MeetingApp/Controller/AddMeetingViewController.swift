//
//  AddMeetingViewController.swift
//  MeetingApp
//
//  Created by Mihai Ruber on 7/19/18.
//  Copyright © 2018 Mihai Ruber. All rights reserved.
//

import UIKit
import Foundation

class AddMeetingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: Variables
    var pickerData: [String] = [String]()

    
    // MARK: Outlets
    @IBOutlet weak var roomPicker: UIPickerView! {
        didSet {
            print("do dope shit here")
            self.roomPicker.delegate = self
            self.roomPicker.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // maybe add in constants file
        pickerData = ["BAZINGA", "BEAM ME UP SCOTTY", "BOOK EM DANNO", "COME ON DOWN", "EXPECT THE UNEXPECTED", "DYNOMITE", "LEGENWAITFORITDAIRY", "LUCY I AM HOME", "NORM", "THE TRIBE HAS SPOKEN", "EXPECT THE UNEXPECTED", "MARCIA MARCIA MARCIA"]
        
    }

    // TODO: Daniel Write this in an extension if you have time

    
    // MARK: Protocol Stubs
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //myLabel.text = pickerData[row]
    }
    

}
