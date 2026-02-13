//
//  ViewController.swift
//  MyProject
//
//  Created by Aleksey Berezka on 01.05.2025.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBAction func sizeTapped(_ sender: Any) {
        print("This functions is actually used")
    }
    
    @IBAction func sizeChanged(_ sender: Any) {
        print("This functions is actually used")
    }
    
    @IBAction func colorTapped(sender: Any) {
        print("This functions is actually used")
    }
    
    @IBAction func colorChanged(sender: Any) {
        print("This functions is actually used")
    }
    
    @IBAction func confirmTapped() {
        print("This functions is actually used")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hostingController = UIHostingController(rootView: ClearButtonView())
        addChild(hostingController)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hostingController.view)
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        hostingController.didMove(toParent: self)
    }
}

