//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Anthony on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane{
    
    override func climb(){
        if inFlight == true && altitude < maxAltitude {
            altitude += (1/5 * maxAltitude)
            decelerate()
        }
    }
    
    override func dive() {
        
        if inFlight == true {
            altitude -= (1/5 * maxAltitude)
            decelerate()
        }
    }
    
    
    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = (2 * maxSpeed)
        }
    }
    
    
}
