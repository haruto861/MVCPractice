//
//  ViewController.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    private let fruitsList = FruitsList()

    // データの参照元になるのはModelであるため、ここのデータはModelにまとめる
//    private let fruitsName: [Fruit] = [
//        Fruit(fruitName: "みかん", isCheck: false),
//        Fruit(fruitName: "りんご", isCheck: true),
//        Fruit(fruitName: "バナナ", isCheck: false),
//        Fruit(fruitName: "パイナップル", isCheck: true)
//    ]
    
    @IBOutlet private weak var fruitsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.register(cell: FruitsTableViewCell.self)
        fruitsTableView.tableFooterView = UIView()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsList.useCase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitsTableViewCell.identiefier) as! FruitsTableViewCell
        cell.configure(fruit: fruitsList.useCase[indexPath.row])
        return cell
    }
}
