//
//  ViewControllerPresenter.swift
//  MVP Tests
//
//  Created by BRQ on 20/11/18.
//  Copyright © 2018 BRQ. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerPresenter {
    private var model = MainModel(clicked: false)
    var buttonTitleState: String {
        return model.clicked ? "Esconder" : "Mostar"
    }
    
    var imageChanged: UIImage {
        return (model.clicked ? UIImage(named: "nos") : UIImage(named: "bau"))!
    }
    
    func updateView() {
        model.clicked = !model.clicked
    }
}

struct MainModel {
    var clicked: Bool
}
