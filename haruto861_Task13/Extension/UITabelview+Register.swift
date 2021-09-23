//
//  UITabelview+Register.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/09/23.
//

import Foundation
import UIKit

extension UITableView {
    func register<T: UITableViewCell>(cell: T.Type)  {
        register(UINib(nibName: T.className, bundle: nil), forCellReuseIdentifier: T.className)
    }
}
