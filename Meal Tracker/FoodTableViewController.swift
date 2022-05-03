//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Aden M on 4/27/22.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals: [Meal] = [Meal(name: "breakfast", food: [Food(name: "egg", description: "scrambled"), Food(name: "toast", description: "not burnt"), Food(name: "juice", description: "orange")]),
    Meal(name: "lunch", food: [Food(name: "apple", description: "fresh"), Food(name: "", description: ""), Food(name: "", description: "")]
        )]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


}
