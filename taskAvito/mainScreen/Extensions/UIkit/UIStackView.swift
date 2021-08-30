//
//  UIStackView.swift
//  taskAvito
//
//  Created by Алина Аристова on 30.08.2021.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSabviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSabviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

