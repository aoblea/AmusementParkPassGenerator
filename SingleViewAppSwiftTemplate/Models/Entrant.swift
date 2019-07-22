//
//  Entrant.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/5/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class Entrant: Swipable {
  // MARK: - Properties
  var firstName: String?
  var lastName: String?
  var streetAddress: String?
  var city: String?
  var state: String?
  var zipCode: String?
  var dateOfBirth: String?
  
  var passHolderType: PassType?
  
  var lastSwipedForArea: AreaType?
  var lastSwipedToRide: RideType?
  var lastSwipedAtRegister: DiscountType?
  
  var timeOfSwipe: Date?
  let currentTime = Date()

  init(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: String?, dateOfBirth: String?) {
    self.firstName = firstName
    self.lastName = lastName
    self.streetAddress = streetAddress
    self.city = city
    self.state = state
    self.zipCode = zipCode
    self.dateOfBirth = dateOfBirth
  }
  
  func nameCheck() throws {
    guard let firstName = firstName else { throw ErrorType.MissingName }
    guard let lastName = lastName else { throw ErrorType.MissingName }
    
    if firstName.isEmpty {
      print("Must enter your first name.")
    }
    if lastName.isEmpty {
      print("Must enter your last name.")
    }
  }
  
  func addressCheck() throws {
    guard let streetAddress = streetAddress else { throw ErrorType.MissingStreetAddress }
    guard let city = city else { throw ErrorType.MissingCity }
    guard let state = state else { throw ErrorType.MissingState }
    guard let zipCode = zipCode else { throw ErrorType.MissingZipCode }
    
    if streetAddress.isEmpty, city.isEmpty, state.isEmpty, zipCode.isEmpty {
      print("Please enter address.")
    }
  }
  
  func detectBirthday() throws {
    if let dateOfBirth = self.dateOfBirth {
      let calendar = Calendar.current
      
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "MM/dd/yyyy"
      guard let formattedDOB = dateFormatter.date(from: dateOfBirth) else { throw ErrorType.MissingDateOfBirth }
      
      let currentMonth = calendar.component(.month, from: currentTime)
      let currentDay = calendar.component(.day, from: currentTime)
      
      let dobMonth = calendar.component(.month, from: formattedDOB)
      let dobDay = calendar.component(.day, from: formattedDOB)
      
      if currentMonth == dobMonth && currentDay == dobDay {
        if let firstName = firstName {
          print("Happy Birthday, \(firstName)!")
        } else {
          print("Happy Birthday!")
        }
      }
    }
  }
}
