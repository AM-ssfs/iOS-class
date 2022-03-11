//
//  ViewController.swift
//  MyApp
//
//  Created by Aden M on 3/11/22.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var BigButton: UIButton!
    @IBOutlet weak var circleImage: UIImageView!
    @IBOutlet var MyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleImage.layer.position.x=player.posX
        circleImage.layer.position.y=player.posY
        // Do any additional setup after loading the view.
    }
    
    var player = Player(posX: 0.0, posY: 0.0)
    
    @IBAction func buttonPress(_ sender: Any) {
        player.posX = UITouch.location(in: MyView).x
    }
    

    

        
}

