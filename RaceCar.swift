//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Anthony on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car{
    var driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
        
    }
    
    override func accelerate(){
        if speed < maxSpeed {
            speed += (1/5 * maxSpeed)
        }
    }
    
    override func decelerate(){
        if speed > 0{
            speed -= (1/5 * maxSpeed)
        }
    }
    
    func driftRight(){
        if speed > 0 {
            heading += 90
            speed -= (1/4 * speed)
        }
    }
    
    func driftLeft(){
        if speed > 0 {
            heading -= 90
            speed -= (1/4 * speed)
        }
    }
    
    
    
    
    
    
}

