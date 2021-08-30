//
//  UILable.swift
//  taskAvito
//
//  Created by Алина Аристова on 30.08.2021.
//

import UIKit
extension UILabel {
    convenience init(text: String, font: UIFont?, alignment: NSTextAlignment) {
        self.init()
        self.text = text
        self.font = font
        self.textAlignment = alignment
        self.textColor = .black
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.7659205794, green: 0.6629573107, blue: 0.6301475167, alpha: 1)
        
    }
}
