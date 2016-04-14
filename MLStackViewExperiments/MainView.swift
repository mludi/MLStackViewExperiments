//
//  MainView.swift
//  MLStackViewExperiments
//
//  Created by Matthias Ludwig on 14.04.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let stackView: UIStackView

    override init(frame: CGRect) {

        let firstView = UIView()
        firstView.backgroundColor = .randomColor()
        
        let secondView = UIView()
        secondView.backgroundColor = .randomColor()
        
        let thirdView = UIView()
        thirdView.backgroundColor = .randomColor()

        
        stackView = UIStackView(arrangedSubviews: [firstView, secondView, thirdView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .Vertical
        stackView.distribution = .FillEqually

        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        addSubview(stackView)

        let views = ["stackView": stackView]
        var constraints = [NSLayoutConstraint]()
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("|[stackView]|", options: [], metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[stackView]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(constraints)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
