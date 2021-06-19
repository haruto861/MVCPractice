//
//  FruitsTableViewCell.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

protocol RegisterableCell {
    static var identiefier: String { get }
    static var nibName: String { get }
}

extension UITableView {
    // TはUITableViewCellプロトコルに準拠した方をとる -> 制約型
    // (cell: T.Type) -> UITableviewCellに準拠したTを型とする
    // where -> where以下の条件を満たす場合のみ有効
    func register<Cell: UITableViewCell>(cell: Cell.Type) where Cell: RegisterableCell {
        register(UINib(nibName: Cell.nibName, bundle: nil), forCellReuseIdentifier: Cell.identiefier)
    }
}

class FruitsTableViewCell: UITableViewCell, RegisterableCell {

    @IBOutlet private weak var fruitsNameLabel: UILabel!
    @IBOutlet private weak var chechmarkImageView: UIImageView!

    static var identiefier: String {
        className
    }

    static var nibName: String {
        className
    }

    private static var className : String {
        return String(describing: self)
    }

    func configure(fruit: Fruit) {
        fruitsNameLabel.text = fruit.name
        chechmarkImageView.image = fruit.isChecked ? UIImage(named: "cehck-mark") : nil
    }
}
