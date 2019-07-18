//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Сергей Иванов on 16/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
