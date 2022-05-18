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
var testDice = DiceSet(title: "testingDice", diceGroup: [testDie1, testDie2], modify: 0)
var testCell = Cells(diceSet: testDice)
var sections = [
    
    Sections(title: "test section header", cell: [testCell]),
    Sections(title: "multiple sections!", cell: [testCell])

]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    // https://programmingwithswift.com/create-a-uitableview-with-swift/
    
    

    

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rollResultDetail: UILabel!
    @IBOutlet weak var prevRollResult: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self

        }
    
    
    
    func numberOfSections(in _: UITableView) -> Int {
        return sections.count
    }
    
    //https://developer.apple.com/documentation/uikit/views_and_controls/table_views/adding_headers_and_footers_to_table_sections
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
         return sections[section].header
     }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        cell.textLabel?.attributedText = sections[indexPath.section].cells[indexPath.row].name
        
        
    //https://stackoverflow.com/questions/27728466/use-multiple-font-colors-in-a-single-label

        
        //let diceRollResult = sections[indexPath.section].cells[indexPath.row].dice.rollDice()
        //prevRollResult.attributedText = diceRollResult[0] as! NSMutableAttributedString
        //rollResultDetail.attributedText = diceRollResult[1] as! NSMutableAttributedString // YAYAYAYAYAAY IT WORKS!!2
        
        return cell
        

        }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print("e")

        let diceRollResult = sections[indexPath.section].cells[indexPath.row].dice.rollDice()
        
        var rollResultText = NSMutableAttributedString()
        rollResultText.append(diceRollResult[0] as! NSMutableAttributedString)
        rollResultText.append(diceRollResult[1] as! NSMutableAttributedString)
        rollResultDetail.attributedText = rollResultText
        prevRollResult.attributedText = diceRollResult[0] as! NSMutableAttributedString
    }

    

}
