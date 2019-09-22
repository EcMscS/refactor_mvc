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
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func show(_ project: Project) {
        let detailVC = DetailViewController.instantiate()
        detailVC.project = project
        detailVC.coordinateor = self
        navigationController.pushViewController(detailVC, animated: true)
    }
    
    func read(_ project: Project) {
        let readVC = ReadViewController.instantiate() //instantiate() rather than the storyboard
        readVC.project = project
        navigationController.pushViewController(readVC, animated: true)
    }
}
