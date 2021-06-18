//
//  ViewController.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    private let fruitsName: [FruisModel] = [ FruisModel(fruitName: "みかん", checkImageUrl: "" ),
                                             FruisModel(fruitName: "りんご", checkImageUrl: "cehck-mark"),
                                             FruisModel(fruitName: "バナナ", checkImageUrl: ""),
                                             FruisModel(fruitName: "パイナップル", checkImageUrl: "cehck-mark") ]
    
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
        return fruitsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitsTableViewCell.identiefier) as! FruitsTableViewCell
        cell.configure(
            fruitsName: fruitsName[indexPath.row].fruitName,
            checkImageUrl: fruitsName[indexPath.row].checkImageUrl
        )
        return cell
    }
}
