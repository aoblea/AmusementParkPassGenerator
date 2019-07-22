//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/4/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class ClassicGuest: Entrant {
  init() {
    super.init(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil)
    passHolderType = .classic
  }
}

class VIPGuest: Entrant {
  init() {
    super.init(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: nil)
    passHolderType = .vip
  }
}

class FreeChildGuest: Entrant {
  init(dateOfBirth: String) throws {
    super.init(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil, dateOfBirth: dateOfBirth)
    passHolderType = .freeChild
    
    if dateOfBirth.isEmpty {
      throw ErrorType.MissingDateOfBirth
    } else if dateOfBirth.count < 10 {
      throw ErrorType.IncorrectFormat
      
    } else if dateOfBirth.count == 10 {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "MM/dd/yyyy"
      
      guard let formattedDOB = dateFormatter.date(from: dateOfBirth) else { throw ErrorType.IncorrectFormat }
      let calendar = Calendar.current
      let today = Date()
      let calculatedAge = calendar.dateComponents([.year], from: formattedDOB, to: today)
      guard let age = calculatedAge.year else { throw ErrorType.MissingValue }
      
      if age < 5 {
        print("Congrats, get your free pass!")
      } else {
        throw ErrorType.AgeRestriction
      }
    }
  }
}
