//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Сергей Иванов on 16/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    var age: Box<String?> = Box(nil)
    
    private var profile: Profile
    
    var description: String {
        return profile.name + " " + profile.secondName + " is " + profile.age.description + " age old"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
