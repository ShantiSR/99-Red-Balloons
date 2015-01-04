//
//  ViewController.swift
//  99 Red Balloons
//
//  Created by Shanti on 4/1/15.
//  Copyright (c) 2015 Shanti Rodríguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBackground: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    var balloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createBalloons()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNext(sender: UIBarButtonItem)
    {
        let balloon = balloons[currentIndex]
        
        lblTitle.text = "\(balloon.number) balloon"
        imgBackground.image = balloon.image
        
        currentIndex += 1
    }
    
    func createBalloons ()
    {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            
            var balloon = Balloon()
            balloon.number = balloonCount
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named:"RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named:"RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named:"RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named:"RedBalloon4.jpg")
            }
            self.balloons.append(balloon)
        }
    }

}

