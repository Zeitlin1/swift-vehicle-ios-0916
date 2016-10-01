//
//  AppDelegate.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
        import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        

        
        class Vehicle {
            
            var name: String
            var weight: Double
            var maxSpeed: Double
            var speed = 0.0
            var heading = 0.0
            
            init(name: String, weight: Double, maxSpeed: Double){
                
                self.name = name
                self.weight = weight
                self.maxSpeed = maxSpeed
                
            }
            
            
            func goFast() {
                speed = 0
            }
            
            func halt() {
                speed = 0
            }
            
            func accelerate() {
                speed += (1/10 * maxSpeed)
            }
            
            func decelerate() {
                speed -= (1/10 * maxSpeed)
            }
            
            func turnRight() {
                if speed > 0 {
                    heading += 90
                    speed = (speed * 0.5)
                }
            }
            
            func turnLeft() {
                if speed > 0 {
                    heading -= 90
                    speed = (speed * 0.5)
                }
            }
            
            
            
            
            
            
            
            
            
            
            
        }
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
