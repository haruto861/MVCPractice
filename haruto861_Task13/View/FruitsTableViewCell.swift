//
//  FruitsTableViewCell.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

final class FruitsTableViewCell: UITableViewCell, RegisterableCell {

    @IBOutlet private weak var fruitsNameLabel: UILabel!
    @IBOutlet private weak var chechmarkImageView: UIImageView!

    static var identiefier: String {
        className
    }

    static var nibName: String {
        className
    }

    static var className : String {
        return String(describing: self)
    }

    func configure(fruit: Fruit) {
        fruitsNameLabel.text = fruit.fruitName
        chechmarkImageView.image = fruit.isCheck ? UIImage(named: "check-mark") : nil
    }
}
