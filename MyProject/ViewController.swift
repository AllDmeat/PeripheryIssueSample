//
//  ViewController.swift
//  MyProject
//
//  Created by Aleksey Berezka on 01.05.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        label.text = "Button tapped at \(Date().formatted(date: .omitted, time: .complete))"
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        print("This functions is actually used")
    }
}

