//
//  ViewController.swift
//  FinalProject1
//
//  Created by Aden M on 5/10/22.
//

import UIKit
import SwiftUI

var testDie1 = Die(title: "D4", sideCount: 4, colors: .blue)
var testDie2 = Die(title: "D6", sideCount: 6, colors: .red)
var testDice = DiceSet(title: "testingDice", diceGroup: [testDie1, testDie2])
var testCell = Cells(title: "this is a cell", diceSet: testDice)
var sections = [
    
    Sections(title: "test section header", cell: [testCell]),
    Sections(title: "multiple sections!", cell: [testCell])

]

class ViewController: UIViewController, UITableViewDataSource {


    // https://programmingwithswift.com/create-a-uitableview-with-swift/
    //let tableViewData = Array(repeating: "Item", count: 5)
    //let tableViewData = [Text("abc").foregroundColor(.red), Text("purple").foregroundColor(.purple)] as [Any]
   
    
    // sections are struct with array cells 
    // change table view data to array of sections (sectionsArray?)
    
    
    let tableViewData = ["abc", "123", "E!"]
    var specialText = NSMutableAttributedString()
    
    

    

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rollResultDetail: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        
        
        
        //doDiceStuff()
    }
    
    // number of sections in:
    func numberOfSections(in _: UITableView) -> Int {
        return sections.count
    }
    
    //https://developer.apple.com/documentation/uikit/views_and_controls/table_views/adding_headers_and_footers_to_table_sections
     func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
         return sections[section].header
     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].cells.count  //self.tableViewData.count (default working)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        cell.textLabel?.text = sections[indexPath.section].cells[indexPath.row].name
        //self.tableViewData[indexPath.row] // (sectionsArray[section].cells[row].name
        
        
    //https://stackoverflow.com/questions/27728466/use-multiple-font-colors-in-a-single-label
        specialText.append(NSAttributedString(string: "Special ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue]))
        specialText.append(NSAttributedString(string: "Text ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.purple]))
        
        rollResultDetail.attributedText = testDice.rollDice()[1] as! NSMutableAttributedString // YAYAYAYAYAAY IT WORKS!!
        //cell.textLabel?.attributedText = specialText
        
        return cell

    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected cell \(indexPath.row)")
    }
    
   /* func doDiceStuff(){
        let dieSet = DiceSet(title: "two D4 and a D6", diceGroup: [builtIns[0], builtIns[0], builtIns[1]])
        print(dieSet.rollDice())
    } */

}
