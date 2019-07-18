//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Сергей Иванов on 16/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var viewModel: DetailViewModelType?
    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.detailLabel.text = string
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        
        self.detailLabel.text = viewModel.description
    }

    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }

}
