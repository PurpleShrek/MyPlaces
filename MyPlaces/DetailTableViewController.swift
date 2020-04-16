//
//  DetailTableViewController.swift
//  MyPlaces
//
//  Created by Zaitsev Aleksey on 16.04.2020.
//  Copyright © 2020 Zaitsev Aleksey. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var typeTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.delegate = self
        locationTF.delegate = self
        typeTF.delegate = self
        
        tableView.tableFooterView = UIView()

    }
    
    // MARK: table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }

    

}
// MARK: text field delegate
extension DetailTableViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
        
}
