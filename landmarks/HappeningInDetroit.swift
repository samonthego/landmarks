//
//  HappeningInDetroit.swift
//  landmarks
//
//  Created by Samuel MCDONALD on 3/6/17.
//  Copyright © 2017 Samuel MCDONALD. All rights reserved.
//

import UIKit

class HappeningInDetroit: NSObject {
    
    
    var name              : String  = ""
    var locDescription    : String  = ""
    var streetAddress     : String  = ""
    var city              : String  = ""
    var state             : String  = ""
    var zip               : String  = ""
    var locLatitude       : String  = ""
    var locLongitude      : String  = ""
    
    
}
extension HappeningInDetroit    {

    convenience init(name :String, locDescription: String,streetAddress: String,city: String,state: String,zip: String, locLatitude: String, locLongitude : String){
        self.init()
        
    self.name           = name
    self.locDescription = locDescription
    self.streetAddress  = streetAddress
    self.city           = city
    self.state          = state
    self.zip            = zip
    self.locLatitude    = locLatitude
    self.locLongitude   = locLongitude
    
    }

}
