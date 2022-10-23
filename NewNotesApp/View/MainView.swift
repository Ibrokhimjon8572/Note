//
//  ButonUI.swift
//  NewNotesApp
//
//  Created by Ibrohimjon Mamajonov on 22/10/22.
//

import Foundation
import UIKit

class MainView{
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Do you give name?"
        label.font = UIFont(name: "AvenirNextCondensed-Heavy", size: 32)
        label.textAlignment = .center
        return label
    }()
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Add", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 1
        button.backgroundColor = UIColor.init(named: "button_color")
        button.layer.borderColor = UIColor.gray.withAlphaComponent(0.2).cgColor
//        button.addTarget(self, action: #selector(add_option), for: .touchUpInside)
        return button
    }()
}


