//
//  ViewController.swift
//  Example
//
//  Copyright © 2018 @andresilvagomez.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label?.font.withSize(19)
    }
}

