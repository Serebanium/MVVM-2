//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Сергей Иванов on 16/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return profile.age.description
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
