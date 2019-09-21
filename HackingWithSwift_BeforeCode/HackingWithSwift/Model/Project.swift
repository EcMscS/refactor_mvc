//
//  Project.swift
//  HackingWithSwift
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

struct Project: Codable {
    var number: Int
    var title: String
    var subtitle: String
    var topics: String
    
    var attributedTitle: NSAttributedString {
        
    }
    
    //Options to remove makeAttributedString method
    //1) Create a view model wrapp[er around this model, which is able to format the model data neatly
    //2) Give our model the know-how to transform itself however it wants
    //Move this into Project Model
    func makeAttributedString(title: String, subtitle: String) -> NSAttributedString {
        let titleAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .headline), NSAttributedString.Key.foregroundColor: UIColor.purple]
        let subtitleAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .subheadline)]
        
        let titleString = NSMutableAttributedString(string: "\(title)\n", attributes: titleAttributes)
        let subtitleString = NSAttributedString(string: subtitle, attributes: subtitleAttributes)
        
        titleString.append(subtitleString)
        
        return titleString
    }
    
}
