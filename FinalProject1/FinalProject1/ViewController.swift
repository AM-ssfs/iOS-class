//
//  ViewController.swift
//  FinalProject1
//
//  Created by Aden M on 5/10/22.
//

import UIKit
import SwiftUI
class ViewController: UIViewController, UITableViewDataSource {


    // https://programmingwithswift.com/create-a-uitableview-with-swift/
    //let tableViewData = Array(repeating: "Item", count: 5)
    //let tableViewData = [Text("abc").foregroundColor(.red), Text("purple").foregroundColor(.purple)] as [Any]
    let tableViewData = ["abc", "123", "E!"]
    var specialText = NSMutableAttributedString()
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rollResultDetail: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.tableViewData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        cell.textLabel?.text = self.tableViewData[indexPath.row]
        
        
    //https://stackoverflow.com/questions/27728466/use-multiple-font-colors-in-a-single-label
        specialText.append(NSAttributedString(string: "Special ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue]))
        specialText.append(NSAttributedString(string: "Text ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.purple]))
        rollResultDetail.attributedText = specialText
        cell.textLabel?.attributedText = specialText
        return cell

    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected cell \(indexPath.row)")
    }
    
}

