//
//  Error.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/11/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum ErrorType: String, Error {
  case MissingPass = "Park pass is required."
  case DoubleSwiped = "Please wait 5 seconds before swiping again."
  case MissingValue = "Value is nil."
  case IncorrectPass = "Pass used does not match."
  case MissingName = "Missing first/last name."
  case MissingStreetAddress = "Missing street address."
  case MissingCity = "Missing city."
  case MissingState = "Missing state."
  case MissingZipCode = "Missing zipcode."
  case MissingDateOfBirth = "Missing date of birth."
  case IncorrectFormat = "You must enter this format mm/dd/yyyy \nEg. 06/17/1988"
  case AgeRestriction = "You must be under 5 years old for this pass."
  
  var description: String {
    return self.rawValue
  }
}
