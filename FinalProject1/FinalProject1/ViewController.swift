//
//  ViewController.swift
//  FinalProject1
//
//  Created by Aden M on 5/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {


    // https://programmingwithswift.com/create-a-uitableview-with-swift/
    let tableViewData = Array(repeating: "Item", count: 5)

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

