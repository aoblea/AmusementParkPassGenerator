//
//  Employee.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/4/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class FoodServicesEmployee: Entrant {
  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, dateOfBirth: nil)
    
    // checks personal info
    try nameCheck()
    try addressCheck()
    
    passHolderType = .foodServices
  }
}

class RideServicesEmployee: Entrant {
  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, dateOfBirth: nil)

    try nameCheck()
    try addressCheck()
    
    passHolderType = .rideServices
  }
}

class MaintenanceEmployee: Entrant {
  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, dateOfBirth: nil)
    
    try nameCheck()
    try addressCheck()
    
    passHolderType = .maintenance
  }
}

class Manager: Entrant {
  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, dateOfBirth: nil)
    
    try nameCheck()
    try addressCheck()
    
    passHolderType = .manager
  }
}
