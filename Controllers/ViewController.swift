//
//  ViewController.swift
//  MVP Tests
//
//  Created by BRQ on 20/11/18.
//  Copyright © 2018 BRQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let v = NSStringFromClass(ViewController.self)
        print(v)
    }

    
    @IBAction func buttonClicked(_ sender: UIButton) {
        coordinator?.buySubscription()
        
    }
    
    @IBAction func sellButton(_ sender: Any) {
        coordinator?.createAccount()
    }
}

