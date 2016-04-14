//
//  ViewController.swift
//  MLStackViewExperiments
//
//  Created by Matthias Ludwig on 14.04.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func loadView() {
        let mainView = MainView(frame: .zero)
        view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        guard let mainView = view as? MainView else { fatalError() }
        mainView.stackView.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor).active = true
    }
}

