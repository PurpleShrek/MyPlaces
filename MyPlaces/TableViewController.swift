//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Zaitsev Aleksey on 16.04.2020.
//  Copyright © 2020 Zaitsev Aleksey. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let restaurantNames = [
        "Burger Heroes", "McDonalds", "KFC", "Burger King", "Рыбы Нет", "MarketPlace", "Чайхона №1", "Domino's", "ДЕПО", "Opyata Bar"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
 }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }


   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
