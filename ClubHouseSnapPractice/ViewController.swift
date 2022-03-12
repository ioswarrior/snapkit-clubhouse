//
//  ViewController.swift
//  ClubHouseSnapPractice
//
//  Created by Alexander on 10.03.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize() {
        view.backgroundColor = UIColor(red: 238/255, green: 236/255, blue: 223/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🎉 Welcome!"
        label.font = UIFont(name: "Nunito", size: 24)
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(40)
            make.top.equalToSuperview().inset(190)
        }
        
        let textLabel1 = UILabel()
        textLabel1.font = UIFont(name: "Nunito", size: 16)
        textLabel1.numberOfLines = 4
        let textWithLS = NSAttributedString(string: "We're working hard to get Clubhouse ready for everyone! While we wrap up the finishing touches, we're adding people gradually to make sure nothing breaks :)").withLineSpacing(6)
        textLabel1.attributedText = textWithLS
        view.addSubview(textLabel1)
        
        textLabel1.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(40)
            make.top.equalTo(label).inset(70)
            
        }
        
        let textLabel2 = UILabel()
        textLabel2.font = UIFont(name: "Nunito", size: 16)
        textLabel2.numberOfLines = 5
        let textLineSp = NSAttributedString(string: "Anyone can join with an invite from an existing user - or reserve your username and we'll text you if you have a friend on the app who can let you in. We are so grateful you're here and can't wait to have you join!").withLineSpacing(6)
        textLabel2.attributedText = textLineSp
        view.addSubview(textLabel2)
        
        textLabel2.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(40)
            make.top.equalTo(textLabel1.snp.bottom).offset(20)
        }
        
        
        let textLabel3 = UILabel()
        textLabel3.text = "🏠 Raul, Rohan & the Clubhouse team"
        textLabel3.font = UIFont(name: "Nunito", size: 16)
        view.addSubview(textLabel3)
        
        textLabel3.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(40)
            make.top.equalTo(textLabel2.snp.bottom).offset(20)
        }
        
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.setTitle("Get your username →", for: .normal)
        button.layer.cornerRadius = 20
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito", size: 16)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(220)
            make.width.equalTo(250)
            make.height.equalTo(40)
        }
        
        let button2 = UIButton(type: .system)
        button2.setTitle("Have an invite text? Sign in →", for: .normal)
        button2.setTitleColor(UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1), for: .normal)
        button2.titleLabel?.font = UIFont(name: "Nunito", size: 14)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        view.addSubview(button2)
        
        button2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(10)
            make.width.equalTo(200)
            make.height.equalTo(30)
        }
    }
    
    @objc private func buttonTapped() {
        print("We want to get a username")
    }
    
    @objc private func button2Tapped() {
        print("Sign in")
    }
}
