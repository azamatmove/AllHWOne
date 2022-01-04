//
//  ViewController.swift
//  HW1.1
//
//  Created by Azamat Sarinzhiev on 30/12/21.
//

import UIKit
import SnapKit

class ViewController1: UIViewController {
    
    var textField = UITextField()
    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 135/255, green: 130/255, blue: 130/255, alpha: 0.8)
        
        view.addSubview(textField)
        textField.placeholder = "Enter text..."
        textField.layer.cornerRadius = 10
        textField.backgroundColor = UIColor(red: 230/255, green: 215/255, blue: 215/255, alpha: 1)
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor(red: 192 / 255, green: 182 / 255, blue: 182 / 255, alpha: 1).cgColor
       
        
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalToSuperview().dividedBy(4)
        }
            view.addSubview(button)
        button.addTarget(nil, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
            button.setTitle("Print", for: .normal)
            button.setTitleColor(.init(red: 242 / 255, green: 226 / 255, blue: 226 / 255, alpha: 1), for: .normal)
            button.backgroundColor = UIColor(red: 249/255, green: 127/255, blue: 127/255, alpha: 0.9)
            button.layer.cornerRadius = 35
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalTo(textField.snp.bottom).offset(100)
                make.height.width.equalTo(70)
            }
        
    }
    @objc func buttonPressed(sender:UIButton) {
        let controller = ViewControllerOne()
        controller.label.text = textField.text
        navigationController?.pushViewController(controller, animated: true)
    }

}


