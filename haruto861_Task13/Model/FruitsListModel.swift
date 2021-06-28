//
//  FruitsListModel.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/28.
//

import Foundation

struct FruitsList {
    let useCase: [Fruit] = [
        // 情報の編集や追加はここにする
        Fruit(fruitName: "みかん", isCheck: false),
        Fruit(fruitName: "りんご", isCheck: true),
        Fruit(fruitName: "バナナ", isCheck: false),
        Fruit(fruitName: "パイナップル", isCheck: true)]
}
