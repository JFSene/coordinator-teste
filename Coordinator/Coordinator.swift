//
//  Coordinator.swift
//  MVP Tests
//
//  Created by BRQ on 22/11/18.
//  Copyright © 2018 BRQ. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
