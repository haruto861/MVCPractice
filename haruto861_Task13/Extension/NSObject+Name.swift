//
//  NSObject+Name.swift
//  haruto861_Task13
//
//  Created by 松島悠人 on 2021/09/23.
//

import Foundation

extension NSObject {
    static var className : String {
        return String(describing: self)
    }
}
