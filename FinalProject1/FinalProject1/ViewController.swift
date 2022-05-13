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
   
    
    // sections are struct with array cells 
    // change table view data to array of sections (sectionsArray?)
    
    
    let tableViewData = ["abc", "123", "E!"]
    var specialText = NSMutableAttributedString()
    
    let builtIns: [Die] = [
        Die(title: "D4", sideCount: 4),
        Die(title: "D6", sideCount: 6),
        Die(title: "D8", sideCount: 8),
        Die(title: "D10", sideCount: 10),
        Die(title: "D12", sideCount: 12),
        Die(title: "D20", sideCount: 20)
    ]
    

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rollResultDetail: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        doDiceStuff()
    }
    
    // number of sections in:
    func numberOfSections(in _: UITableView) -> Int {
        return 3 // THIS NEEDS TO BE A VARIABLE (return sectionsArray.count)
    }
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
       return "Header \(section)" // change to name of section (return sectionsArray[section].name)
     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.tableViewData.count // (sectionsArray[section].cells.count)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        cell.textLabel?.text = self.tableViewData[indexPath.row] // (sectionsArray[section].cells[row].name
        
        
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
    
    func doDiceStuff(){
        let dieSet = DiceSet(title: "two D4 and a D6", diceGroup: [builtIns[0], builtIns[0], builtIns[1]])
        print(dieSet.rollDice())
    }

}
