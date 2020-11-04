//
//  BuyCoordinator.swift
//  CoordinatorPractice
//
//  Created by Keunna Lee on 2020/11/04.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }   
}
