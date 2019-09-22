//
//  MainCoordinator.swift
//  HackingWithSwift
//
//  Created by Jeffrey Lai on 9/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var children = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    //Creatans an instance of ViewController class and shows it immediatesly
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
    
}
