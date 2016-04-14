//
//  Color.swift
//  MLStackViewExperiments
//
//  Created by Matthias Ludwig on 14.04.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(256)) / 255.0, green: CGFloat(arc4random_uniform(256)) / 255.0, blue: CGFloat(arc4random_uniform(256)) / 255.0, alpha: 1.0)
    }
}
