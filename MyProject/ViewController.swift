//
//  ViewController.swift
//  MyProject
//
//  Created by Aleksey Berezka on 01.05.2025.
//

import UIKit
import SwiftUI
import SampleDS

class ViewController: UIViewController {

    // Use SampleViewController via Storyboardable to make it "referenced" for Periphery
    func showSample() {
        let vc = SampleViewController.instantiateInitialFromStoryboard()
        present(vc, animated: true)
    }
    
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
        showSample()
        
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

