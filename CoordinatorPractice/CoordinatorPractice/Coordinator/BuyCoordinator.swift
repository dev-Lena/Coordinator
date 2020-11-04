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
        // MainCoordinator.buySubscription()의 코드를 이곳으로 옮길 예정입니다.
    }
}
