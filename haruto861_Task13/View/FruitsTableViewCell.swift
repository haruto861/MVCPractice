//
//  FruitsTableViewCell.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

final class FruitsTableViewCell: UITableViewCell {

    @IBOutlet private weak var fruitsNameLabel: UILabel!
    @IBOutlet private weak var chechmarkImageView: UIImageView!

    func configure(fruit: Fruits) {
        fruitsNameLabel.text = fruit.fruitName
        chechmarkImageView.image = fruit.isCheck ? UIImage(named: "check-mark") : nil
    }
}
