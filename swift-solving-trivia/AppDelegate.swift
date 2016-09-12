//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
  
    
    func isCharacterMatching(state:String, capital:String) ->Bool {
        for char in state.lowercaseString.characters {
            for charr in capital.lowercaseString.characters {
                if char == charr {
                    return false
                }
                
            }
        }
        return true
    }




    func solveTrivia(dictionary:[String:String]) ->String {
    var result:String = ""
    for (state, capital) in dictionary {
        if isCharacterMatching(state, capital: capital) {
            result = "\(state)"
            return result
        }
}
          return result
}
}