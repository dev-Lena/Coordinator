//
//  ViewController.swift
//  CoordinatorPractice
//
//  Created by Keunna Lee on 2020/11/04.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }

    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }

}

