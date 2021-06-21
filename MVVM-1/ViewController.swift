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
    
    var viewModel: ViewModel!  {
        didSet {
            self.name.text = viewModel.name
            self.secondName.text = viewModel.secondName
            self.age.text = viewModel.age
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }
}

