//
//  UITabelview+Register.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/09/23.
//

import Foundation
import UIKit

protocol RegisterableCell {
    static var identiefier: String { get }
    static var nibName: String { get }
}

extension UITableView {
    func register<T: UITableViewCell>(cell: T.Type) where T: RegisterableCell {
        register(UINib(nibName: T.nibName, bundle: nil), forCellReuseIdentifier: T.identiefier)
    }
}
