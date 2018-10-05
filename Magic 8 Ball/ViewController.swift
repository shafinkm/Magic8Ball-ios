//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Owner on 2018-09-18.
//  Copyright © 2018 Safinali Maredia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBallImage(_ sender: UIButton) {
        changeBallImage()
    }
    
    func changeBallImage(){
        ballImageView.image = UIImage(named: "ball\((arc4random_uniform(5)+1))")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
}

