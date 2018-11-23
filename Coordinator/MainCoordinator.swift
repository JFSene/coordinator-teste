//
//  MainCoordinator.swift
//  MVP Tests
//
//  Created by BRQ on 22/11/18.
//  Copyright © 2018 BRQ. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate(name: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate(name: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = SellViewController.instantiate(name: "Main")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showBeta() {
        let vc = BettaViewController.instantiate(name: "Beta")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
