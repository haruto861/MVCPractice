//
//  ViewController.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

final class FruitsListViewController: UIViewController, UITableViewDelegate {

    private let fruitsList = FruitsList()
    
    @IBOutlet private weak var fruitsTableView: UITableView! {
        didSet {
            fruitsTableView.delegate = self
            fruitsTableView.dataSource = self
            fruitsTableView.register(cell: FruitsTableViewCell.self)
            fruitsTableView.tableFooterView = UIView()
        }
    }
}

extension FruitsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsList.useCase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitsTableViewCell.identiefier) as! FruitsTableViewCell
        cell.configure(fruit: fruitsList.useCase[indexPath.row])
        return cell
    }
}
