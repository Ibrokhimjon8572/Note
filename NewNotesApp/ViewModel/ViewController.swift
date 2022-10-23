//
//  ViewController.swift
//  NewNotesApp
//
//  Created by Ibrohimjon Mamajonov on 20/10/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
        lazy var titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Notes methods"
            label.font = UIFont(name: "GillSans-Bold", size: 32)
            label.textAlignment = .center
            return label
        }()
        lazy var descriptionLabel: UILabel = {
            let label = UILabel()
            label.text = "You can add your note option to make bookings even farter bla, bla....."
            label.font = .italicSystemFont(ofSize: 20)
            label.textAlignment = .center
            label.numberOfLines = .max
    
            return label
        }()
        lazy var entry_icon: UIImageView = {
            let image = UIImageView()
            image.image = UIImage.init(named: "entry_icon")
    
            return image
        }()
        lazy var button: UIButton = {
            let button = UIButton()
            button.setTitle("Creat a new notes method", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.layer.cornerRadius = 25
            button.layer.borderWidth = 1
            button.backgroundColor = UIColor.init(named: "button_color")
            button.layer.borderColor = UIColor.gray.withAlphaComponent(0.2).cgColor
            button.addTarget(self, action: #selector(button_action), for: .touchUpInside)
            return button
        }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(named: "background_color")
        // Do any additional setup after loading the view.
        setupView()
    }
        func setupView(){
            view.addSubview(entry_icon)
            view.addSubview(titleLabel)
            view.addSubview(descriptionLabel)
            view.addSubview(button)
            entry_icon.snp.makeConstraints{ make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(80)
                make.bottom.equalTo(view.snp_centerYWithinMargins)
                make.leading.trailing.equalToSuperview().inset(60)
            }
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(entry_icon.snp.bottom).offset(35)
                make.trailing.leading.equalTo(button)
            }
            descriptionLabel.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).offset(20)
                make.trailing.leading.equalTo(button)
            }
            button.snp.makeConstraints { make in
                make.top.equalTo(descriptionLabel.snp.bottom).offset(30)
                make.trailing.leading.equalToSuperview().inset(40)
                make.height.equalTo(60)
            }
        }
        @objc func button_action(){
            print("button pressed")
    //        let newViewController = CardsViewController()
    //        present(newViewController, animated: true, completion: nil)
           // let newViewController = CardsViewController()
            //self.navigationController?.pushViewController(newViewController, animated: true)
        }
    


}

