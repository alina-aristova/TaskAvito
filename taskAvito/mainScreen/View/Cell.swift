//
//  Cell.swift
//  taskAvito
//
//  Created by Алина Аристова on 30.08.2021.
//

import UIKit

class ScheduleTVC: UITableViewCell {
    
    let name = UILabel(text: "alina", font: UIFont(name: "Avenir next", size: 25 ), alignment: .left)
    let number = UILabel(text: "88005553535", font: UIFont(name: "Avenir next", size: 25 ), alignment: .right)
   // let lessonTime = UILabel(text: "Skills:", font: UIFont(name: "Avenir next", size: 20 ), alignment: .left)
    let TypeName = UILabel(text: "Java", font: UIFont(name: "Avenir next", size: 15 ), alignment: .left)
    let lableType = UILabel(text: "Swift", font: UIFont(name: "Avenir next", size: 15 ), alignment: .left)
    let audName = UILabel(text: "Kotlin", font: UIFont(name: "Avenir next", size: 15 ), alignment: .left)
    let lableAud = UILabel(text: "Python", font: UIFont(name: "Avenir next", size: 15 ), alignment: .left)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05){ [self] in
            setConstraints()
        }
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        let stackView = UIStackView(arrangedSabviews: [name, number], axis: .horizontal, spacing: 10, distribution: .fillEqually)
        
        self.addSubview(stackView)
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10), stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5), stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5), stackView.heightAnchor.constraint(equalToConstant: 25)])

     //   self.addSubview(lessonTime)
//        NSLayoutConstraint.activate([lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10), lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),  lessonTime.heightAnchor.constraint(equalToConstant: 25), lessonTime.widthAnchor.constraint(equalToConstant: 100)])
        
        let bottomStackView = UIStackView(arrangedSabviews: [TypeName, lableType, audName, lableAud ], axis: .horizontal, spacing: 1, distribution: .fillEqually)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10), bottomStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),  bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5), bottomStackView.heightAnchor.constraint(equalToConstant: 25)])
    }
    
}
    
// расширение котрое округляет ячейки таблицы
extension ScheduleTVC {
    override open var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 10
            frame.origin.x += 10
            frame.size.height -= 15
            frame.size.width -= 2 * 10
            super.frame = frame
        }
    }
}
