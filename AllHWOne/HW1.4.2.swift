//
//  ViewController4.swift
//  Hw1.4
//
//  Created by Azamat Sarinzhiev on 30/12/21.
//

import Foundation
import UIKit
import SnapKit

class ViewControllerFour: UIViewController {
    var label = UILabel()
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 135/255, green: 130/255, blue: 130/255, alpha: 0.8)
        view.addSubview(label)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.layer.cornerRadius = 10
        label.backgroundColor = UIColor(red: 230/255, green: 215/255, blue: 215/255, alpha: 1)
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor(red: 192 / 255, green: 182 / 255, blue: 182 / 255, alpha: 1).cgColor

        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalToSuperview().dividedBy(2)
        }
    }
}
