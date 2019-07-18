//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Сергей Иванов on 16/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
