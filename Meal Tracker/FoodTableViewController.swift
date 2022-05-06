//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Aden M on 4/27/22.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals: [Meal] = [
        Meal(name: "breakfast", food: [Food(name: "egg", description: "scrambled"), Food(name: "toast", description: "not burnt"), Food(name: "juice", description: "orange")]),
        Meal(name: "lunch", food: [Food(name: "apple", description: "fresh"), Food(name: "sandwich", description: "smoked turkey"), Food(name: "fries", description: "sweet-potato")]),
        Meal(name: "dinner", food: [Food(name: "soup", description: "tomato"), Food(name: "chicken", description: "fried"), Food(name: "noodles", description: "spicy")])
            
    ]
    
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
        return meals.count // number of meals
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count // number of food in that meal
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        var  myCell = cell.defaultContentConfiguration()
        myCell.text = meals[indexPath.section].food[indexPath.row].name
        myCell.secondaryText = meals[indexPath.section].food[indexPath.row].description
        cell.contentConfiguration = myCell
        // Configure the cell...
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
        return meals[section].name
    }
    


}
