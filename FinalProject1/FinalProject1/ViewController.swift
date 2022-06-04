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
var testDie3 = Die(title: "D20", sideCount: 20, colors: .green)
var testDie4 = Die(title: "D8", sideCount: 8, colors: .purple)
var testDice = DiceSet(title: "testingDice", diceGroup: [testDie1, testDie2], modify: -4)
var testDice2 = DiceSet(title: "testingDiceTwo (now with uber long name!)!!!!!!", diceGroup: [testDie1, testDie1], modify: 2)
var testDice3 = DiceSet(title: "dex. saving throw", diceGroup: [testDie3], modify: 4)
var testDice4 = DiceSet(title: "wis. saving throw", diceGroup: [testDie3], modify: 1)
var testDice5 = DiceSet(title: "shortsword to-hit", diceGroup: [testDie3], modify: 6)
var testDice6 = DiceSet(title: "shortsword damage", diceGroup: [testDie2, testDie2], modify: 4)
var testDice7 = DiceSet(title: "light crossbow to-hit", diceGroup: [testDie3], modify: 6)
var testDice8 = DiceSet(title: "light crossbow damage", diceGroup: [testDie4], modify: 4)

var testCell = Cells(diceSet: testDice)
var testCell2 = Cells(diceSet: testDice2)
var testCell3 = Cells(diceSet: testDice3)
var testCell4 = Cells(diceSet: testDice4)
var testCell5 = Cells(diceSet: testDice5)
var testCell6 = Cells(diceSet: testDice6)
var testCell7 = Cells(diceSet: testDice7)
var testCell8 = Cells(diceSet: testDice8)

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{

var sections = [
    
    Sections(title: "test section header", cell: [testCell]),
    Sections(title: "multiple sections!", cell: [testCell2]),
    Sections(title: "saving throws", cell: [testCell3, testCell4]),
    Sections(title: "combat", cell: [testCell5, testCell6, testCell7, testCell8])


]
//https://stackoverflow.com/questions/34157800/set-table-view-into-editing-mode -> 
//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{


    // https://programmingwithswift.com/create-a-uitableview-with-swift/
    
    

    

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rollResultTitle: UILabel!
    @IBOutlet weak var rollResultDetail: UILabel!
    @IBOutlet weak var bigTitle: UILabel!
    @IBOutlet weak var prevRollResult: UILabel!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var editTableButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var amogogos: String = "ee"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        rollResultDetail.attributedText = NSMutableAttributedString(string: "EEEEEEE\nRoll")
        prevRollResult.attributedText = NSMutableAttributedString(string: "Prev.\nRoll\nRollEEE")
        
        // no navigation controller
        // " Use the edit button provided by the view controller. "
        navigationItem.rightBarButtonItem = editButtonItem
        }
    
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        //" Takes care of toggling the button's title. "
        super.setEditing(editing, animated: true)

        // " Toggle table view editing. "
        tableView.setEditing(editing, animated: true)
        
        tableView.reloadData()
    }
    //https://stackoverflow.com/questions/34157800/set-table-view-into-editing-mode
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let sender = sender as? UIButton else { return }

        if sender == helpButton {
            segue.destination.navigationItem.title = "helpPage"
        }
        if sender == addButton {
            
            let newThing = segue.destination as! NewViewController
            newThing.dataReciver = sections
        }
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

        
        return cell
        }


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                        // Delete the row from the data source
                sections[Int(indexPath.section)].cells.remove(at: indexPath.row)
                        // Then, delete the row from the table itself
                tableView.deleteRows(at: [indexPath], with: .fade)
                if sections[Int(indexPath.section)].cells.isEmpty{
                    sections.remove(at: Int(indexPath.section))
                    tableView.reloadData()
                }
            }
        }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("e")
        let diceRollResult = sections[indexPath.section].cells[indexPath.row].dice.rollDice()
        let prevRollResult1 = NSMutableAttributedString(string: "Prev.\n")
        
        //now i have two labels for the roll result so a lot of this is extra and can be cleaned up
        
        //let abc = rollResultDetail.attributedText?.string.firstIndex(of: "\n")?.encodedOffset
        let prevRollTotal = rollResultDetail.attributedText?.attributedSubstring(from: NSRange(location: 0, length: 2))
        prevRollResult1.append(prevRollTotal!)
        
        let rollResultTitle1 = NSMutableAttributedString()
        let rollResultText = NSMutableAttributedString()
        rollResultTitle1.append(sections[indexPath.section].cells[indexPath.row].dice.name)
        //rollResultText.append(NSAttributedString(string: "\n"))
        rollResultText.append(diceRollResult[0] as! NSMutableAttributedString)
        rollResultText.append(NSAttributedString(string: " = "))
        rollResultText.append(diceRollResult[1] as! NSMutableAttributedString)
        
        let rollResultTextLines = rollResultText
        
    
        prevRollResult.attributedText = prevRollResult1
        rollResultTitle.attributedText = rollResultTitle1
        rollResultDetail.attributedText = rollResultTextLines

    }
    @IBAction func setEditButton(_ sender: Any) {
        print("edit/save button pressed")
        //tableView.isEditing.toggle()
        if editTableButton.currentTitleColor == .link{
            editTableButton.setTitle("Save", for: .normal)
            editTableButton.tintColor = .green
            bigTitle.text = "Edit Mode"
            tableView.setEditing(true, animated: true)
        }
        else{
            editTableButton.setTitle("Edit", for: .normal)
            editTableButton.tintColor = .link
            bigTitle.text = "Saved Dice"
            tableView.setEditing(false, animated: true)
        }

    }
    @IBAction func doSomething(_ sender: Any) {
        var testSomething = DiceSet(title: "onetwothree", diceGroup: [testDie3], modify: 1)
        var qwertyiop = Cells(diceSet: testSomething)
        var aaaaaa = Sections(title: "beep-boop", cell: [qwertyiop])
        //sections.append(aaaaaa)
        //tableView.reloadData()
        print(amogogos)
    }
    
    

}
