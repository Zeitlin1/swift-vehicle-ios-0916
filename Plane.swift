//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Anthony on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle{
    var maxAltitude: Double
    var altitude = 0.0
    var inFlight: Bool {
    return speed > 0 && altitude > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
 
    }
    
    func takeoff(){
        if inFlight == false {
            speed = (1/10 * maxSpeed)
            altitude = (1/10 * maxAltitude)
        }
    }
    
    func land(){
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight == true && altitude < maxAltitude {
            altitude += (1/10 * maxAltitude)
            decelerate()
        }
    }
    
    func dive() {
        if altitude > 0 {
            altitude -= (1/10 * maxAltitude)
            accelerate()
        }
    }
    
    func bankRight() {
        if inFlight == true {
            heading += 45
            speed -= (1/10 * speed)
        }
    }
    
    func bankLeft() {
        if inFlight == true {
            heading -= 45
            speed -= (1/10 * speed)
        }
    }
    
    
    
    
}
