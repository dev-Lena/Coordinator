//
//  Coordinator.swift
//  CoordinatorPractice
//
//  Created by Keunna Lee on 2020/11/04.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
