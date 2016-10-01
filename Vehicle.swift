//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Anthony on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

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
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        speed += (1/10 * maxSpeed)
    }
    
    func decelerate() {
        if speed > 0 {
        speed -= (1/10 * maxSpeed)
        }
        if speed < 0 {
            speed = 0
        }
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
