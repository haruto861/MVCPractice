//
//  FruitListUseCase.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/06/14.
//

import Foundation
import UIKit

class FruitListUseCase  {
    private(set) var fruits: [Fruit] = [
        Fruit(name: "みかん", isChecked: false),
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true),
    ]
}
