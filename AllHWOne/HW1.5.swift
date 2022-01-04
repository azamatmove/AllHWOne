//
//  ViewController.swift
//  CalculatorSnp
//
//  Created by Azamat Sarinzhiev on 4/1/22.
//

import UIKit
import SnapKit

class ViewController5: UIViewController {

    private var view1 = UIView()
    
    private var line1 = UIView()
    private var zero = UIButton(type: .system)
    private var point = UIButton(type: .system)
    private var equal = UIButton(type: .system)

    private var line2 = UIView()
    private var one = UIButton(type: .system)
    private var two = UIButton(type: .system)
    private var three = UIButton(type: .system)
    private var add = UIButton(type: .system)

    private var line3 = UIView()
    private var four = UIButton(type: .system)
    private var five = UIButton(type: .system)
    private var six = UIButton(type: .system)
    private var subtract = UIButton(type: .system)
    
    private var line4 = UIView()
    private var seven = UIButton(type: .system)
    private var eight = UIButton(type: .system)
    private var nine = UIButton(type: .system)
    private var multiply = UIButton(type: .system)
    
    private var line5 = UIView()
    private var clear = UIButton(type: .system)
    private var negate = UIButton(type: .system)
    private var percent = UIButton(type: .system)
    private var divide = UIButton(type: .system)
    
    private var text = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 48/255, green: 36/255, blue: 86/255, alpha: 1)
        view.addSubview(text)
        text.text = "0"
        text.font = text.font.withSize(60)
        text.textColor = .white
        text.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(50)
            make.top.equalToSuperview().inset(70)
        }
        
        view.addSubview(view1)
        view1.snp.makeConstraints { make in
            make.leading.bottom.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.75)
        }
        view1.addSubview(line1)
        line1.snp.makeConstraints { make in
            make.leading.bottom.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }

        line1.addSubview(zero)
        zero.setTitleColor(.white, for: .normal)
        zero.layer.borderWidth = 1
        zero.layer.borderColor = UIColor.black.cgColor
        zero.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        zero.setTitle("0", for: .normal)
        zero.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
        line1.addSubview(point)
        point.setTitleColor(.white, for: .normal)
        point.layer.borderWidth = 1
        point.layer.borderColor = UIColor.black.cgColor
        point.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        point.setTitle(",", for: .normal)
        point.snp.makeConstraints { make in
            make.leading.equalTo(zero.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line1.addSubview(equal)
        equal.setTitleColor(.white, for: .normal)
        equal.layer.borderWidth = 1
        equal.layer.borderColor = UIColor.black.cgColor
        equal.backgroundColor = UIColor(red: 242/255, green: 163/255, blue: 60/255, alpha: 1)
        equal.setTitle("=", for: .normal)
        equal.snp.makeConstraints { make in
            make.leading.equalTo(point.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        view1.addSubview(line2)
        line2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(line1.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        line2.addSubview(one)
        one.setTitleColor(.white, for: .normal)
        one.layer.borderWidth = 1
        one.layer.borderColor = UIColor.black.cgColor
        one.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        one.setTitle("1", for: .normal)
        one.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(two)
        two.setTitleColor(.white, for: .normal)
        two.layer.borderWidth = 1
        two.layer.borderColor = UIColor.black.cgColor
        two.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        two.setTitle("2", for: .normal)
        two.snp.makeConstraints { make in
            make.leading.equalTo(one.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(three)
        three.setTitleColor(.white, for: .normal)
        three.layer.borderWidth = 1
        three.layer.borderColor = UIColor.black.cgColor
        three.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        three.setTitle("3", for: .normal)
        three.snp.makeConstraints { make in
            make.leading.equalTo(two.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(add)
        add.setTitleColor(.white, for: .normal)
        add.layer.borderWidth = 1
        add.layer.borderColor = UIColor.black.cgColor
        add.backgroundColor = UIColor(red: 242/255, green: 163/255, blue: 60/255, alpha: 1)
        add.setTitle("+", for: .normal)
        add.snp.makeConstraints { make in
            make.leading.equalTo(three.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        view1.addSubview(line3)
        line3.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(line2.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        line3.addSubview(four)
        four.setTitleColor(.white, for: .normal)
        four.layer.borderWidth = 1
        four.layer.borderColor = UIColor.black.cgColor
        four.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        four.setTitle("4", for: .normal)
        four.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(five)
        five.setTitleColor(.white, for: .normal)
        five.layer.borderWidth = 1
        five.layer.borderColor = UIColor.black.cgColor
        five.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        five.setTitle("5", for: .normal)
        five.snp.makeConstraints { make in
            make.leading.equalTo(four.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(six)
        six.setTitleColor(.white, for: .normal)
        six.layer.borderWidth = 1
        six.layer.borderColor = UIColor.black.cgColor
        six.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        six.setTitle("3", for: .normal)
        six.snp.makeConstraints { make in
            make.leading.equalTo(five.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(subtract)
        subtract.setTitleColor(.white, for: .normal)
        subtract.layer.borderWidth = 1
        subtract.layer.borderColor = UIColor.black.cgColor
        subtract.backgroundColor = UIColor(red: 242/255, green: 163/255, blue: 60/255, alpha: 1)
        subtract.setTitle("-", for: .normal)
        subtract.snp.makeConstraints { make in
            make.leading.equalTo(six.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        view1.addSubview(line4)
        line4.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(line3.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        line4.addSubview(seven)
        seven.setTitleColor(.white, for: .normal)
        seven.layer.borderWidth = 1
        seven.layer.borderColor = UIColor.black.cgColor
        seven.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        seven.setTitle("7", for: .normal)
        seven.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(eight)
        eight.setTitleColor(.white, for: .normal)
        eight.layer.borderWidth = 1
        eight.layer.borderColor = UIColor.black.cgColor
        eight.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        eight.setTitle("8", for: .normal)
        eight.snp.makeConstraints { make in
            make.leading.equalTo(seven.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(nine)
        nine.setTitleColor(.white, for: .normal)
        nine.layer.borderWidth = 1
        nine.layer.borderColor = UIColor.black.cgColor
        nine.backgroundColor = UIColor(red: 98/255, green: 89/255, blue: 126/255, alpha: 1)
        nine.setTitle("9", for: .normal)
        nine.snp.makeConstraints { make in
            make.leading.equalTo(eight.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(multiply)
        multiply.setTitleColor(.white, for: .normal)
        multiply.layer.borderWidth = 1
        multiply.layer.borderColor = UIColor.black.cgColor
        multiply.backgroundColor = UIColor(red: 242/255, green: 163/255, blue: 60/255, alpha: 1)
        multiply.setTitle("x", for: .normal)
        multiply.snp.makeConstraints { make in
            make.leading.equalTo(nine.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        view1.addSubview(line5)
        line5.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(line4.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        line5.addSubview(clear)
        clear.setTitleColor(.white, for: .normal)
        clear.layer.borderWidth = 1
        clear.layer.borderColor = UIColor.black.cgColor
        clear.backgroundColor = UIColor(red: 67/255, green: 57/255, blue: 103/255, alpha: 1)
        clear.setTitle("AC", for: .normal)
        clear.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(negate)
        negate.setTitleColor(.white, for: .normal)
        negate.layer.borderWidth = 1
        negate.layer.borderColor = UIColor.black.cgColor
        negate.backgroundColor = UIColor(red: 67/255, green: 57/255, blue: 103/255, alpha: 1)
        negate.setTitle("±", for: .normal)
        negate.snp.makeConstraints { make in
            make.leading.equalTo(clear.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(percent)
        percent.setTitleColor(.white, for: .normal)
        percent.layer.borderWidth = 1
        percent.layer.borderColor = UIColor.black.cgColor
        percent.backgroundColor = UIColor(red: 67/255, green: 57/255, blue: 103/255, alpha: 1)
        percent.setTitle("%", for: .normal)
        percent.snp.makeConstraints { make in
            make.leading.equalTo(negate.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(divide)
        divide.setTitleColor(.white, for: .normal)
        divide.layer.borderWidth = 1
        divide.layer.borderColor = UIColor.black.cgColor
        divide.backgroundColor = UIColor(red: 242/255, green: 163/255, blue: 60/255, alpha: 1)
        divide.setTitle("÷", for: .normal)
        divide.snp.makeConstraints { make in
            make.leading.equalTo(percent.snp.trailing)
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
    }
}

