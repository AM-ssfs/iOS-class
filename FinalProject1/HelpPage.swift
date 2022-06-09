//
//  HelpPage.swift
//  FinalProject1
//
//  Created by Aden M on 6/8/22.
//

import UIKit

class HelpPage: UIViewController {

    
    var aaaaa: [Sections] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let amongus = segue.destination as! ViewController
        amongus.amogogos="AAAAA"
        amongus.sections=aaaaa
    
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
