//
//  Extensions.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Arwin Oblea on 7/21/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

// Entrant swipe features
extension Entrant {
  
  func swipe(pass: PassType, for area: AreaType) throws {
    guard let passHolder = passHolderType else { throw ErrorType.MissingPass }
    
    if pass == passHolder {
      if lastSwipedForArea != area {
        validatePass(passType: pass, areaType: area)
      } else {
        guard let unwrappedTimeOfSwipe = timeOfSwipe else { throw ErrorType.MissingValue }
        let past = Calendar.current.dateComponents([.second], from: unwrappedTimeOfSwipe, to: currentTime)
        
        guard let unwrappedSecondsPassed = past.second else { throw ErrorType.MissingValue }
        if unwrappedSecondsPassed < 5 {
          throw ErrorType.DoubleSwiped
        } else {
          validatePass(passType: pass, areaType: area)
        }
      }
    } else {
      throw ErrorType.IncorrectPass
    }
    
    try detectBirthday()
  }
  
  func validatePass(passType: PassType, areaType: AreaType) {
    if passType.evaluatePassForAreaAccess().contains(areaType) {
      lastSwipedForArea = areaType
      timeOfSwipe = Date()
      print("Access valid.")
    } else {
      print("Invalid access.")
    }
  }
  
  func swipe(pass: PassType, to ride: RideType) throws {
    guard let passHolder = passHolderType else { throw ErrorType.MissingPass }
    
    if pass == passHolder {
      if lastSwipedToRide != ride {
        validatePass(passType: pass, rideType: ride)
      } else {
        guard let unwrappedTimeOfSwipe = timeOfSwipe else { throw ErrorType.MissingValue }
        let past = Calendar.current.dateComponents([.second], from: unwrappedTimeOfSwipe, to: currentTime)
        
        guard let unwrappedSecondsPassed = past.second else { throw ErrorType.MissingValue }
        if unwrappedSecondsPassed < 5 {
          throw ErrorType.DoubleSwiped
        } else {
          validatePass(passType: pass, rideType: ride)
        }
      }
    } else {
      throw ErrorType.IncorrectPass
    }
    
    try detectBirthday()
  }
  
  func validatePass(passType: PassType, rideType: RideType) {
    if passType.evaluatePassForRideAccess().contains(rideType) {
      lastSwipedToRide = rideType
      timeOfSwipe = Date()
      print("Benefit valid.")
    } else {
      print("Benefit invalid.")
    }
  }
  
  func swipe(pass: PassType, atRegister: DiscountType) throws {
    guard let passHolder = passHolderType else { throw ErrorType.MissingPass }
    
    if pass == passHolder {
      if lastSwipedAtRegister != atRegister {
        validatePass(passType: pass, discountType: atRegister)
      } else {
        guard let unwrappedTimeOfSwipe = timeOfSwipe else { throw ErrorType.MissingValue }
        let past = Calendar.current.dateComponents([.second], from: unwrappedTimeOfSwipe, to: currentTime)
        
        guard let unwrappedSecondsPassed = past.second else { throw ErrorType.MissingValue }
        if unwrappedSecondsPassed < 5 {
          throw ErrorType.DoubleSwiped
        } else {
          validatePass(passType: pass, discountType: atRegister)
        }
      }
    } else {
      throw ErrorType.IncorrectPass
    }
    
    try detectBirthday()
  }
  
  func validatePass(passType: PassType, discountType: DiscountType) {
    if passType.evaluatePassForDiscountAccess().contains(discountType) {
      lastSwipedAtRegister = discountType
      timeOfSwipe = Date()
      
      var foodDiscountPercent: Double
      var merchandiseDiscountPercent: Double
      
      if discountType == .food {
        switch passType {
        case .vip:
          foodDiscountPercent = 10
          print("\(passType) pass: You have \(foodDiscountPercent)% discount on food.")
          return
        case .foodServices, .rideServices, .maintenance:
          foodDiscountPercent = 15.0
          print("\(passType) pass: You have \(foodDiscountPercent)% discount on food.")
          return
        case .manager:
          foodDiscountPercent = 25.0
          print("\(passType) pass: You have \(foodDiscountPercent)% discount on food.")
          return
        default:
          print("Discounts for \(passType) passes are unavailable for \(discountType).")
        }
      }
      
      if discountType == .merchandise {
        switch passType {
        case .vip:
          merchandiseDiscountPercent = 20.0
          print("\(passType) pass: You have \(merchandiseDiscountPercent)% discount on merchandise.")
          return
        case .foodServices, .rideServices, .maintenance, .manager:
          merchandiseDiscountPercent = 25.0
          print("\(passType) pass: You have \(merchandiseDiscountPercent)% discount on merchandise.")
          return
        default:
          print("Discounts for \(passType) passes are unavailable for \(discountType).")
        }
      }
    }
  }
}


