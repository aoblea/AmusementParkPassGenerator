//
//  Employee.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/4/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class Employee: Entrant {
  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode, dateOfBirth: nil)
    
    guard let firstName = firstName else { throw ErrorType.MissingName }
    guard let lastName = lastName else { throw ErrorType.MissingName }
    
    if firstName.isEmpty, lastName.isEmpty {
      print("Must enter your first name.")
    }
    
    guard let streetAddress = streetAddress else { throw ErrorType.MissingStreetAddress }
    guard let city = city else { throw ErrorType.MissingCity }
    guard let state = state else { throw ErrorType.MissingState }
    guard let zipCode = zipCode else { throw ErrorType.MissingZipCode }
    
    if streetAddress.isEmpty, city.isEmpty, state.isEmpty, zipCode.isEmpty {
      print("Please enter address.")
    }
  }
}

class FoodServicesEmployee: Employee {
  init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String) throws {
    try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    
    passHolderType = .foodServices
  }
}

class RideServicesEmployee: Employee {
  init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String) throws {
    try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    
    passHolderType = .rideServices
  }
}

class MaintenanceEmployee: Employee {
  init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String) throws {
    try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    
    passHolderType = .maintenance
  }
}

class Manager: Employee {
  init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String) throws {
    try super.init(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    
    passHolderType = .manager
  }
}
