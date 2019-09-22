//
//  Coordinator.swift
//  HackingWithSwift
//
//  Created by Jeffrey Lai on 9/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    var children: [Coordinator] { get set }
    
    func start() 
    
}
