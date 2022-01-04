//
//  ViewController.swift
//  AllHWOne
//
//  Created by Azamat Sarinzhiev on 4/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var button1 = UIButton(type: .system)
    private var button2 = UIButton(type: .system)
    private var button3 = UIButton(type: .system)
    private var button4 = UIButton(type: .system)
    private var button5 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(displayP3Red: 45/255, green: 12/255, blue: 162/255, alpha: 1)
        
        view.addSubview(button1)
        button1.backgroundColor = UIColor(red: 248/255, green: 210/255, blue: 80/255, alpha: 1)
        button1.layer.cornerRadius = 20
        button1.setTitle("HW1.1", for: .normal)
        button1.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        button1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.top.equalToSuperview().offset(50)
        }
        
        view.addSubview(button2)
        button2.backgroundColor = UIColor(red: 248/255, green: 210/255, blue: 80/255, alpha: 1)
        button2.layer.cornerRadius = 20
        button2.setTitle("HW1.2", for: .normal)
        button2.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        button2.snp.makeConstraints { make in
            
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.top.equalTo(button1.snp.bottom).offset(50)
        }
        
        view.addSubview(button3)
        button3.backgroundColor = UIColor(red: 248/255, green: 210/255, blue: 80/255, alpha: 1)
        button3.layer.cornerRadius = 20
        button3.setTitle("HW1.3", for: .normal)
        button3.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        button3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.top.equalTo(button2.snp.bottom).offset(50)
        }
        view.addSubview(button4)
        button4.backgroundColor = UIColor(red: 248/255, green: 210/255, blue: 80/255, alpha: 1)
        button4.layer.cornerRadius = 20
        button4.setTitle("HW1.4", for: .normal)
        button4.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        button4.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.top.equalTo(button3.snp.bottom).offset(50)
        }
        view.addSubview(button5)
        button5.backgroundColor = UIColor(red: 248/255, green: 210/255, blue: 80/255, alpha: 1)
        button5.layer.cornerRadius = 20
        button5.setTitle("HW1.5", for: .normal)
        button5.addTarget(nil, action: #selector(VCChange(sender:)), for: .touchUpInside)
        button5.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.top.equalTo(button4.snp.bottom).offset(50)
        }
    }
        @objc func VCChange (sender: UIButton) {
            if sender.titleLabel?.text == "HW1.1" {
                navigationController?.pushViewController(ViewController1(), animated: true)
            } else if sender.titleLabel?.text == "HW1.2" {
                navigationController?.pushViewController(ViewController2(), animated: true)
            } else if sender.titleLabel?.text == "HW1.3" {
                navigationController?.pushViewController(ViewController3(), animated: true)
            } else if sender.titleLabel?.text == "HW1.4" {
                navigationController?.pushViewController(ViewController4(), animated: true)
            } else if sender.titleLabel?.text == "HW1.5" {
                navigationController?.pushViewController(ViewController5(), animated: true)
    }

}

}
