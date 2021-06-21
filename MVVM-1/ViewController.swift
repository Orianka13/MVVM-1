//
//  ViewController.swift
//  MVVM-1
//
//  Created by Олеся Егорова on 21.06.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var age: UILabel!
    
    //создадим некого пользователя, информацию о котором помести в наши ярлыки
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.name.text = profile.name
            self.secondName.text = profile.secondName
            self.age.text = String(profile.age)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "John", secondName: "Smith", age: 33)
    }
}

