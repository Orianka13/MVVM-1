//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Олеся Егорова on 21.06.2021.
//

import Foundation

class ViewModel {
   //определим зависимости от Profile
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    var secondName: String {
        return profile.secondName
    }
    var age: String {
        return "\(profile.age)"
    }
}
